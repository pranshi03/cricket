import 'package:cricket/presentation/dashboard/cubit/dashboard_cubit.dart';
import 'package:cricket/presentation/dashboard/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'common_libs.dart';
import 'firebase_options.dart';


void main() async{

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => DashboardCubit(),
      child:MaterialApp(
      home: const Dashboard(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    ));
  }
}
