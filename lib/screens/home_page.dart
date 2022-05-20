import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/widgets/ButtonWidget.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "Hello",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nStart Your beautiful day",
                      style: TextStyle(
                        color: AppColors.smallTextColor,
                        fontSize: 20,
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            ButtonWidget(
                backg_color: AppColors.mainColor,
                text: "Add Task",
                textColor: Colors.white),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
                backg_color: Colors.white,
                text: "View All",
                textColor: AppColors.smallTextColor),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/welcome.jpg"),
          ),
        ),
      ),
    );
  }
}
