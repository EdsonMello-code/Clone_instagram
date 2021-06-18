import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/components/feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 203,
        toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/images/logo.png',
            height: 29,
            width: 103,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            height: 0.2,
            color: Colors.black26,
            width: MediaQuery.of(context).size.width * 0.98,
          ),
          preferredSize: Size.fromHeight(0.2),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.home_outlined,
              color: Colors.black87,
              size: 30,
            ),
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.circle_outlined,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.circle_outlined,
              color: Colors.black87,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    child: ListTile(
                      title: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[350],
                            maxRadius: 60,
                          ),
                          Text('Fulano')
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 0.2,
            color: Colors.black26,
          ),
          Container(
            height: 450,
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Feed(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
