import 'package:flutter/material.dart';

import '../util/bubble_stories.dart';
import '../util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Pranavraj',
    'Gian',
    'Vinay',
    'Vijay',
    'Akshay',
    'Ajay',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  child: Icon(Icons.favorite),
                  padding: EdgeInsets.all(25),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Stories
          Container(
            height: 130,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return BubbleStory(text: people[index]);
              },
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          // Posts
          Expanded(
            child: ListView.builder(itemCount: people.length,itemBuilder: (context, index){
              return UserPost(name: people[index]);
            }),
          ),
        ],
      ),
    );
  }
}
