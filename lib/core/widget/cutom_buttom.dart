import 'package:flutter/material.dart';
import 'package:vodafone/core/utils/style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              minimumSize: const Size(double.infinity, 80),
              side: const BorderSide(color: Colors.black, width: 2),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          child: Text(
            text,
            style: Style.textstyle18.copyWith(
              fontSize: fontSize,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
    
  }
}
