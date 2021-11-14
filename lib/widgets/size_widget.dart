import '/shared/theme.dart';
import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  final String size;
  final bool isChecked;

  SizeWidget({
    required this.size,
    this.isChecked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      decoration: BoxDecoration(
        color: isChecked ? kPrimaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: kPrimaryColor,
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: isChecked
              ? whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                )
              : primaryTextStyle.copyWith(
                  fontSize: 24,
                ),
        ),
      ),
    );
  }
}
