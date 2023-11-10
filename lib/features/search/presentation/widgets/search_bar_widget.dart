import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5.0),
      decoration: ShapeDecoration(
        color: const Color(0xFF262626),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Color(0xFF8E8E93),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.30,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 12.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
