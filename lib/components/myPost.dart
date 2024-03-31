import 'package:flutter/material.dart';

class MyPost extends StatefulWidget {
  const MyPost({super.key, required this.imagePath});
  final String imagePath;

  @override
  State<MyPost> createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  bool isLiked = false;
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            children: [
              SizedBox(
                height: 45,
                width: 45,
                child: Image.asset(ImageItems().instaProfile),
              ),
              const Text("  aleyn_yilmz"),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        Image.asset("assets/${widget.imagePath}"),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                icon: isLiked
                    ? const Icon(Icons.favorite_rounded)
                    : const Icon(Icons.favorite_border_rounded)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.insert_comment_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    isSaved = !isSaved;
                  });
                },
                icon: isSaved
                    ? const Icon(Icons.bookmark_outlined)
                    : const Icon(Icons.bookmark_border_rounded)),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(ImageItems().instaProfile)),
            ),
            const Text(" Liked by"),
            const Text(
              " aleyn_yilmz",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(" and"),
            const Text(
              " 8.295 others",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            /* const Text("  162 yorumun tümünü gör",
                style: TextStyle(color: Colors.grey)), */
          ],
        ),
      ],
    );
    ;
  }
}

class ImageItems {
  final String instaPost = "assets/instaPost.jpg";
  final String instaProfile = "assets/pp.png";
  final String instaText = "assets/instaLogo.png";
}
