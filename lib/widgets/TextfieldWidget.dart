import 'package:flutter/material.dart';
import 'package:task_manager/colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final double borderRadius;
  final int lines;
  const TextFieldWidget(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.borderRadius,
      required this.lines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lines,
      controller: textController,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textHolder,
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: Colors.white, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: Colors.white, width: 1))),
    );
  }
}
