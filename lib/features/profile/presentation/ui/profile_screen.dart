import 'package:flutter/material.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/home/home.dart';
import 'package:instagram/features/profile/profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: const ProfileAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileAvatarAndInfo(),
            sizeVer(15),
            Container(
              width: double.infinity,
              height: 29,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.white.withOpacity(0.15),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.10,
                    ),
                  ),
                ),
              ),
            ),
            Container(
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
            )
          ],
        ),
      ),
    );
  }
}
