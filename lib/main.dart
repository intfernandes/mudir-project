
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mudir/core/services/locationHelper/location_helper.dart';
import 'package:mudir/features/home/manger/home_cubit.dart';

import 'myApp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocationHelper.getMyCurrentLocation();
  runApp(BlocProvider(create: (context) => HomeCubit(),
  child: BlocBuilder<HomeCubit,HomeState>(builder: (context, state) => const MyApp(),),
  ));
}

