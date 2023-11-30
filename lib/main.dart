import 'package:flutter/material.dart';
import 'package:flutter_toonflix/widgets/button.dart';
import 'package:flutter_toonflix/widgets/current_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void clickCounter() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click counter',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '$count',
                style: const TextStyle(fontSize: 40),
              ),
              IconButton(
                onPressed: clickCounter,
                icon: const Icon(
                  Icons.add_circle_outline_sharp,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
