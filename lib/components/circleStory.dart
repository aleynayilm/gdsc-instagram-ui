import 'package:flutter/material.dart';
import 'package:home_page/components/myPost.dart';
import 'package:home_page/page2/home_page.dart';

class MyStory extends StatelessWidget {
  const MyStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Column(
        children: [
          Image.asset(ImageItems().instaProfile),
          const Text("Profile")
        ],
      ),
    );
    ;
  }
}
