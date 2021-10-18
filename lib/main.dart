import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
// import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Gradient",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Text("Gradient appbar"),
        gradient: const LinearGradient(colors: [Colors.indigo, Colors.cyan]),
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )
        ],
      ),
    );
  }
}
