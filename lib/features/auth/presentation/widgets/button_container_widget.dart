import 'package:flutter/material.dart';
import 'package:instagram/core/utils/app_consts.dart';

class ButtonContainerWidget extends StatelessWidget {
  final Color? color;
  final String title;
  final VoidCallback? onTap;

  const ButtonContainerWidget({
    Key? key,
    this.color = blueColor,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
