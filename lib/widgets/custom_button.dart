import 'package:flutter/material.dart';
import 'package:my_tsel/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String title;
  final Color backgroundColor;
  final Function() onPressed;
  const CustomButton({
    Key? key,
    this.width = double.infinity,
    required this.title,
    this.backgroundColor = Colors.red,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 42,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
