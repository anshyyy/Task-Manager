import 'package:flutter/material.dart';
import 'package:task_manager/controllers/data_controller.dart';
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
  loadData() async {
    await Get.find<DataController>().getData();
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DataController());
    Get.find<DataController>().getData();
    loadData();
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
