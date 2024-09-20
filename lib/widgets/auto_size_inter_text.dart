import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizeInterText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fw;
  final int? maxLines;
  final TextAlign? align;
  final FontStyle? fontStyle;
  const AutoSizeInterText(
      {super.key,
      required this.text,
      this.fontSize,
      this.color,
      this.maxLines,
      this.fw,
      this.fontStyle,
      this.align});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines ?? 1,
      textAlign: align ?? TextAlign.center,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: fw ?? FontWeight.normal,
        fontStyle: fontStyle,
      ),
    );
  }
}
