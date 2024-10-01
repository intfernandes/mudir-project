import 'dart:async';

import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mudir/core/utils/consts/app_colors.dart';
import 'package:mudir/core/utils/responsiveUi/responsive_height.dart';
import 'package:mudir/core/utils/responsiveUi/responsive_width.dart';
import 'package:mudir/core/utils/widgets/button_animation.dart';
import '../../../core/services/locationHelper/location_helper.dart';

class SetProfileLocation extends StatefulWidget {
  const SetProfileLocation({super.key});

  @override
  State<SetProfileLocation> createState() => _SetProfileLocationState();
}
final TextEditingController searchBar = TextEditingController();
class _SetProfileLocationState extends State<SetProfileLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: widgetHeight(context: context, height: 20),
          elevation: 0.0,
          bottom: PreferredSize(
              preferredSize: Size(
                  double.infinity, widgetHeight(context: context, height: 60)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  REdgeInsets.only(right: 20.0,left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        SizedBox(width: widgetWidth(context: context, width: 10),),
                        Expanded(
                          child: Container(
                            height: widgetHeight(context: context, height: 60),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Colors.white,
                            ),
                            child: AnimatedSearchBar(
                                height: 60,
                                label: 'بحث    ',
                                searchIcon: Icon(Icons.search_rounded),
                                controller: searchBar,
                                labelStyle:
                                const TextStyle(fontSize: 12, fontFamily: "poppins"),
                                searchStyle: const TextStyle(color: Colors.black),
                                cursorColor: Colors.white,
                                textInputAction: TextInputAction.done,
                                searchDecoration: const InputDecoration(
                                  hintText: 'Search',
                                  alignLabelWithHint: true,
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  hintStyle: TextStyle(color: Colors.white70),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {},
                                onFieldSubmitted: (value) {}),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: widgetHeight(context: context, height: 10),)
                ],
              ),),
        ),
        body: MapScreen(),
      ),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static Position? position;
  final mapController = Completer<GoogleMapController>();
  final CameraPosition myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(
        LocationHelper.position!.latitude, LocationHelper.position!.longitude),
    tilt: 0.0,
    zoom: 14,
  );

  @override
  Widget build(BuildContext context) {
    List<Marker> markers = [
      Marker(
          markerId: MarkerId("1"),
          position: LatLng(LocationHelper.position!.latitude,
              LocationHelper.position!.longitude))
    ];
    return LocationHelper.position?.latitude != null
        ? Stack(
            alignment: Alignment.bottomCenter,
            children: [
              GoogleMap(
                // onTap: (LatLng latlng) {
                //   markers.add(Marker(markerId: MarkerId("1"),position: LatLng(latlng.latitude, latlng.longitude)));
                //   setState(() {
                //
                //   });
                // },
                // markers: markers.toSet(),
                mapType: MapType.normal,
                indoorViewEnabled: true,
                buildingsEnabled: true,
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                initialCameraPosition: myCurrentLocationCameraPosition,

                onMapCreated: (GoogleMapController controller) {
                  mapController.complete(controller);
                },
              ),
              Container(
                padding:
                    REdgeInsetsDirectional.only(top: 15, start: 20, end: 20),
                height: widgetHeight(context: context, height: 158),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24.r),
                        topLeft: Radius.circular(24.r))),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          size: 21.sp,
                          color: Colors.grey[600],
                        ),
                        SizedBox(
                          width: widgetWidth(context: context, width: 5),
                        ),
                        Text(
                          "المكان الأساسي , المكان الفرعي , تفاصيل المكان \n تفاصيل المكان",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 10),
                    ),
                    SizedBox(
                        height: widgetHeight(context: context, height: 55),
                        child: AnimationButton())
                  ],
                ),
              ),
              Positioned(
                bottom: 200,
                left: 300,
                child: Container(
                    width: widgetWidth(context: context, width: 54),
                    height: widgetHeight(context: context, height: 54),
                    decoration: BoxDecoration(
                        color: KColors.primary, shape: BoxShape.circle),
                    child: Center(
                        child: Icon(
                      Icons.my_location_outlined,
                      color: Colors.white,
                    ))),
              ),
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
