import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> postImages = [
    "images/insta.jpg",
    "images/insta2.jpeg",
    "images/insta3.jpeg",
    "images/insta4.jpeg",
    "images/insta5.jpeg",
    "images/insta6.jpeg",
    "images/insta7.jpeg",
    "images/insta8.jpeg",
    "images/insta9.jpeg",
  ];
  List<String> profileImages = [
    "images/insta.jpg",
    "images/insta2.jpeg",
    "images/insta3.jpeg",
    "images/insta4.jpeg",
    "images/insta5.jpeg",
    "images/insta6.jpeg",
    "images/insta7.jpeg",
    "images/insta8.jpeg",
    "images/insta9.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.grey[900],
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'cursive',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            "images/story.jpeg",
                          ),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(profileImages[index]),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "name",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                8,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage(
                              "images/story.jpeg",
                            ),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                        ),
                        Text("name"),
                        Spacer(),
                        IconButton(onPressed: null, icon: Icon(Icons.more_vert))
                      ],
                    ),
                    Container(
                      width: 600,
                      height: 300,
                      child: Image.asset(
                        postImages[index],
                        width: 800,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: null, icon: Icon(Icons.favorite_border)),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.chat_bubble_outline)),
                        IconButton(
                            onPressed: null,
                            icon: Icon(Icons.telegram_outlined)),
                        Spacer(),
                        IconButton(
                            onPressed: null, icon: Icon(Icons.bookmark_border)),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by "),
                                  TextSpan(
                                    text: "name ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: "and "),
                                  TextSpan(
                                    text: "others ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          ),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "name ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          "Life is a journey not a destination"),
                                  TextSpan(
                                    text: "...more",
                                    style: TextStyle(
                                      color: Colors.black38,
                                    ),
                                  ),
                                ]),
                          ),
                          Text(
                            "view all 35 comments",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
