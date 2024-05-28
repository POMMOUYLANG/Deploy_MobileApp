import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

// Session1

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'Flutter Layout Demo',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://images.pexels.com/photos/52718/angel-wings-love-white-52718.jpeg?auto=compress&cs=tinysrgb&w=600"),
            const CampgroundWidget(),
            const ActionButtons(),
            const DescriptionWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink,
        child: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.home),
          onPressed: () {
            // ignore: avoid_print
            print("Button Pressed");
          },
        ),
      ),
    );
  }
}

// Session2

class CampgroundWidget extends StatelessWidget {
  const CampgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.pink,
          ),
          SizedBox(width: 4.0),
          Text('41'),
        ],
      ),
    );
  }
}

// Session3

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.call,
                color: Colors.pink,
              ),
              SizedBox(height: 8.0),
              Text(
                'CALL',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.near_me,
                color: Colors.pink,
              ),
              SizedBox(height: 8.0),
              Text(
                'ROUTE',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.share,
                color: Colors.pink,
              ),
              SizedBox(height: 8.0),
              Text(
                'SHARE',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Seesion4
class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(23.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
        'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
        'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
        'and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. '
        'Activities enjoyed here include rowing, and riding the summer toboggan run.',
        style: TextStyle(
          fontSize: 14.0,
          height: 1.5, // line height
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
