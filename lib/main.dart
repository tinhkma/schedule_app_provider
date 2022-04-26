import 'package:flutter/material.dart';
import 'package:schedule_provider/locator.dart';
import 'package:schedule_provider/ui/screen/home_screen.dart';
import 'package:schedule_provider/view_models/login_screen_viewmodel.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SChedule Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
