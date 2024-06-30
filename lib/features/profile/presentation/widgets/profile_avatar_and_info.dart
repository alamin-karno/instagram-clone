import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/shared/shared.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/profile/profile.dart';

class ProfileAvatarAndInfo extends StatelessWidget {
  const ProfileAvatarAndInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// AVATAR AND INFO
        const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Row(
            children: [
              AppCircleAvatar(
                imgSrc: 'https://avatars.githubusercontent.com/alamin-karno',
              ),
              Expanded(
                flex: 1,
                child: VerticalTextInfoWidget(
                  title: 'Posts',
                  value: '54',
                ),
              ),
              Expanded(
                flex: 1,
                child: VerticalTextInfoWidget(
                  title: 'Followers',
                  value: '54',
                ),
              ),
              Expanded(
                flex: 1,
                child: VerticalTextInfoWidget(
                  title: 'Following',
                  value: '162',
                ),
              ),
            ],
          ),
        ),
        sizeVer(12),

        /// TITLE WITH BLUE TIK
        Row(
          children: [
            const Text(
              'Md. Al-Amin',
              style: TextStyle(
                color: Color(0xFFF9F9F9),
                fontSize: 12,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600,
              ),
            ),
            sizeHor(4),
            SvgPicture.asset('assets/images/ic_blue_tik.svg'),
          ],
        ),
        sizeVer(5),

        /// DESCRIPTION
        const HighlightText(
          text:
              'Junior Software Engineer @rokomari.com \nAndroid | Flutter | Dart | JAVA | Instructor @Instrcutory',
        ),
      ],
    );
  }
}
