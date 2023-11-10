import 'package:flutter/material.dart';
import 'package:instagram/features/home/home.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const PostWidget();
      },
    );
  }
}
