import 'package:flutter/material.dart';

class CustomCenteredCircleContainer extends StatelessWidget {
  final double parentWidth;
  final double parentHeight;
  final Color parentColor;
  final double circleWidth;
  final double circleHeight;
  final Color circleColor; // New parameter for circle's background color
  final String? text; // Text to display in the circle
  final Color borderColor;
  final double borderWidth;
  final TextStyle? textStyle; // Custom text style

  const CustomCenteredCircleContainer({
    Key? key,
    required this.parentWidth,
    required this.parentHeight,
    this.parentColor = Colors.red,
    this.circleWidth = 120,
    this.circleHeight = 120,
    this.circleColor = Colors.blue, // Default circle color
    this.text, // Optional parameter for the text
    this.borderColor = Colors.black,
    this.borderWidth = 3,
    this.textStyle, // Optional parameter for custom text style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: parentWidth,
      height: parentHeight,
      color: parentColor, // Parent container color
      child: Center(
        child: Container(
          width: circleWidth,
          height: circleHeight,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor, // Circle's background color
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          child: Center(
            child: Text(
              text ?? '', // Display the text or an empty string
              textAlign: TextAlign.center,
              style: textStyle ?? const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
