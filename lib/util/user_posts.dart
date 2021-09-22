import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;

  UserPost({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile Photo
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // name
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        // Posts
        Container(
          height: 400,
          color: Colors.grey,
        ),
        //below the post -> buttons and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                    ),
                    child: Icon(Icons.chat_bubble_outline_outlined),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_border),
            ],
          ),
        ),

        // like by
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                'Gian',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        // Caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        '  I turn the durt they throwing at me into riches till i m filty rich.'),
              ],
            ),
          ),
        ),

        // Comments
      ],
    );
  }
}
