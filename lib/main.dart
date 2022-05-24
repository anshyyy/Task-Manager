import 'package:flutter/material.dart';
import 'package:task_manager/screens/Add_task.dart';
import 'package:task_manager/screens/all_task.dart';
import 'package:task_manager/screens/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home_page(),
    );
  }
}
