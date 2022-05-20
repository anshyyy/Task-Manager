import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';
import 'package:task_manager/widgets/ButtonWidget.dart';
import 'package:task_manager/widgets/TextfieldWidget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/addtask1.jpg")),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.secondaryColor,
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                TextFieldWidget(
                  textController: nameController,
                  hintText: "Task Name",
                  borderRadius: 30,
                  lines: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  textController: detailController,
                  hintText: "Task Detail",
                  borderRadius: 15,
                  lines: 4,
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonWidget(
                    backg_color: AppColors.mainColor,
                    text: "Add",
                    textColor: Colors.white)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            )
          ],
        ),
      ),
    );
  }
}
