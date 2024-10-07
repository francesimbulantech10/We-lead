import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback action;
  final Color bgColor;

  const ButtonWidget({
    super.key,
    required this.title,
    required this.action,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.blue,
      onTap: action,
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bgColor, // Apply the background color here
          border: Border.all(
            width: 0.5,
            color: bgColor,
          ),
          borderRadius: BorderRadius.circular(1),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 255, 255,
                255), // Optional: to improve contrast with bgColor
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
