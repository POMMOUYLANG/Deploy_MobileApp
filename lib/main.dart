import 'package:flutter/material.dart';
import 'package:flutter_app02/testlayout.dart';

void main() {
  runApp(const Layout());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              title: const Text("LOGIN ACCOUNT"),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Form(
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter email',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder()),
                        onChanged: (String value) {},
                      ),

                    ],
                  ),
                )
              ],
            )));
  }
}
