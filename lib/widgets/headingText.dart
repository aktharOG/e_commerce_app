// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final TextAlign textAlign;
  final int maxLines;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const HeadingText(
      {super.key,
      required this.text,
      this.fontSize = 26,
      this.color,
      this.textAlign = TextAlign.center,
      this.maxLines = 2,
      this.fontWeight = FontWeight.normal,
      this.fontFamily
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily:fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? Colors.black,
        // shadows: const <Shadow>[
        //   Shadow(
        //     offset: Offset(1.0, 1.0),
        //     blurRadius: 10.0,
        //      color: Color.fromARGB(36, 0, 0, 0),
        //   ),
        //   Shadow(
        //     offset: Offset(1.0, 1.0),
        //     blurRadius: 10.0,
        //     color: Color.fromARGB(92, 0, 0, 0),
        //   ),
        // ],
      ),
    );
  }
}
