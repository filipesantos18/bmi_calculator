import 'dart:io';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: Platform.isIOS ? const EdgeInsets.only(bottom: 20) : null,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: Platform.isAndroid
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              : null,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(buttonTitle, style: kLargeButtonTextStyle),
      ),
      onTap: onTap,
    );
  }
}
