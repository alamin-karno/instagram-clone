import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyDayItemWidget extends StatelessWidget {
  const MyDayItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFBAA47),
                      Color(0xffD91A46),
                      Color(0xffA60F93),
                    ],
                  ),
                ),
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                child: Container(
                  padding: const EdgeInsets.all(1.5),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://avatars.githubusercontent.com/alamin-karno',
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: imageProvider),
                      ),
                    ),
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 3,
                ),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.81, -0.59),
                    end: Alignment(-0.81, 0.59),
                    colors: [
                      Color(0xFFC90083),
                      Color(0xFFD22463),
                      Color(0xFFE10038)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'LIVE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFEFEFE),
                    fontSize: 8,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            'Your Story',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF9F9F9),
              fontSize: 12,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.01,
            ),
          ),
        ],
      ),
    );
  }
}
