import 'package:flutter/material.dart';
import 'package:scoped_model_architecture/service_locator.dart';
import 'package:scoped_model_architecture/ui/views/home_view.dart';


void main () {
  setupLocator(); // Booting the services and models.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView()
    );
  }
}