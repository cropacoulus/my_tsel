import 'package:flutter/material.dart';
import 'package:my_tsel/shared/theme.dart';

class CustomButtonIcon extends StatelessWidget {
  final Color borderColor;
  final String icon;
  final String title;
  const CustomButtonIcon({
    Key? key,
    required this.title,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 42,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  icon,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: blueDarkTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
