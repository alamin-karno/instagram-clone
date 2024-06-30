import 'package:flutter/material.dart';
import 'package:instagram/core/utils/app_consts.dart';

class VerticalTextInfoWidget extends StatelessWidget {
  const VerticalTextInfoWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        sizeVer(3),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
