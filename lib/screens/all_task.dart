import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.arrow_back,
                color: AppColors.secondaryColor,
              ),
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 3.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/header1.jpg"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: AppColors.secondaryColor,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.calendar_view_month_sharp,
                    color: AppColors.secondaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "2  ",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.secondaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
