import 'package:flutter/material.dart';

class HighlightText extends StatelessWidget {
  const HighlightText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final parts = text.split(' ');
    return RichText(
      text: TextSpan(
        children: parts.map((part) {
          if (part.startsWith('@')) {
            return TextSpan(
              text: '$part ',
              style: const TextStyle(
                color: Colors.lightBlue, //Color(0xFF05386B),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            );
          } else {
            return TextSpan(
              text: '$part ',
              style: const TextStyle(
                color: Color(0xFFF9F9F9),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
