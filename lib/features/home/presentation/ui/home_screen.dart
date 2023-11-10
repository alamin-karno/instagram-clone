import 'package:flutter/material.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backGroundColor,
      appBar: HomeAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyDayListWidget(),
            PostListWidget(),
          ],
        ),
      ),
    );
  }
}
