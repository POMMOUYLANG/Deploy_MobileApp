import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.pink),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            'LA Foulard 234%',
            style: TextStyle(
                fontFamily: 'KantumruyPro-BoldItalic', color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Text(
                "ក្រមាខ្មែរ",
                style: TextStyle(
                    fontFamily: 'KantumruyPro-BoldItalic',
                    color: Colors.red,
                    fontSize: 80),
              ),
              Image(
                // image on website
                // image: NetworkImage(
                //     'https://gogocambodia.asia/wp-content/themes/kroma/assets/images/logo.png')
                // image on local
                image: AssetImage('images/Kroma.png'),
              ),
              Expanded(child: Container()),
              Container(
                height: 50,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
