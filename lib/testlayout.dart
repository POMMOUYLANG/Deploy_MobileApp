import 'package:flutter/material.dart';

// void main() {
//   runApp(const Layout());
// }

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Layout',
              style: TextStyle(color: Colors.black),
            ),
            // backgroundColor: Colors.pink,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Image.network(
                  "https://images.pexels.com/photos/52718/angel-wings-love-white-52718.jpeg?auto=compress&cs=tinysrgb&w=600")
            ],
          )),
    );
  }
}
