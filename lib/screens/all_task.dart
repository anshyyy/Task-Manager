import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/widgets/ButtonWidget.dart';
import 'package:task_manager/widgets/task_widget.dart';
import 'package:get/get.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData = ["Try harder", "Try smarter"];
    final leftEditIcon = Container(
      margin: const EdgeInsets.only(bottom: 0, top: 19),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
    );
    final rightEditIcon = Container(
      margin: const EdgeInsets.only(bottom: 0, top: 19),
      color: Colors.red,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
              ),
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.secondaryColor,
                ),
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
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: myData.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      background: leftEditIcon,
                      secondaryBackground: rightEditIcon,
                      onDismissed: (DismissDirection direction) {},
                      confirmDismiss: (DismissDirection direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (_) {
                                return Container(
                                  height: 550,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF2e3253)
                                        .withOpacity(0.4),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ButtonWidget(
                                            backg_color: AppColors.mainColor,
                                            text: "View",
                                            textColor: Colors.white),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ButtonWidget(
                                            backg_color: AppColors.mainColor,
                                            text: "Edit",
                                            textColor: Colors.white)
                                      ],
                                    ),
                                  ),
                                );
                              });
                          return false;
                        } else {
                          return Future.delayed(const Duration(seconds: 1),
                              () => direction == DismissDirection.endToStart);
                        }
                      },
                      key: ObjectKey(index),
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: TaskWidget(
                          text: myData[index],
                          color: Colors.blueGrey,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
