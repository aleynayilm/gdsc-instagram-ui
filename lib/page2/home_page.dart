import 'package:flutter/material.dart';
import 'package:home_page/components/circleStory.dart';
import 'package:home_page/components/myPost.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person),
  ];

  List<String> images = [
    "çiçek.jpeg",
    "Post2.jpg",
    "Post3.jpg",
    "Post4.jpg",
    "Post5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
        title: SizedBox(
          child: Image.asset(ImageItems().instaText),
          width: 200,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send_rounded),
          )
        ],
      ),
      body: Column(children: [
        SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return const MyStory();
              },
            )),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return MyPost(
                imagePath: images[index],
              );
            },
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, color: Colors.black),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black), label: ' ')
        ],
      ),
    );
  }
}
