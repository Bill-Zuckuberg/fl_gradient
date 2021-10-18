import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

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
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.5, 0.9],
                    colors: [Colors.yellow, Colors.indigo, Colors.teal])),
            child: const Text(
              "LinearGradient",
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          Container(
            height: 300,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                    radius: 0.7, colors: [Colors.blue, Colors.red])),
            child: const Text(
              "RadioGradient",
              textAlign: TextAlign.center,
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
