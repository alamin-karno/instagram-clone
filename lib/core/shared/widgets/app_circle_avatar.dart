import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/core/utils/app_consts.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({
    super.key,
    required this.imgSrc,
    this.height = 96,
    this.width = 96,
    this.errorIcon = Icons.account_circle,
  });

  final String imgSrc;
  final double height, width;
  final IconData? errorIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.5),
      decoration: const BoxDecoration(
        color: Color(0xFF48484A),
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: CachedNetworkImage(
          imageUrl: imgSrc,
          imageBuilder: (context, imageProvider) => Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: imageProvider),
            ),
          ),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          errorWidget: (context, url, error) => Icon(
            errorIcon,
            color: primaryColor,
            size: 96,
          ),
        ),
      ),
    );
  }
}
