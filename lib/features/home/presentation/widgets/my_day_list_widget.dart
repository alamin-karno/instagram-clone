import 'package:flutter/material.dart';
import 'package:instagram/features/home/home.dart';

class MyDayListWidget extends StatelessWidget {
  const MyDayListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: const BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Color(0x493C3C43),
            blurRadius: 0,
            offset: Offset(0, 0.33),
            spreadRadius: 0,
          )
        ],
      ),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return const MyDayItemWidget();
        },
      ),
    );
  }
}
