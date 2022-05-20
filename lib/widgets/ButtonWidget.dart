import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backg_color;
  final String text;
  final Color textColor;

  const ButtonWidget(
      {Key? key,
      required this.backg_color,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: backg_color, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28, color: textColor),
        ),
      ),
    );
  }
}
