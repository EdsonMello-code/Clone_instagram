import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffE06E2E),
                        maxRadius: 24,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[350],
                        maxRadius: 22,
                      ),
                    ],
                  ),
                  Text('Fulano')
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 254,
                color: Colors.grey[350],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.chat_bubble_outline,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.rotate(
                        angle: 5.6,
                        child: Icon(
                          Icons.send_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
