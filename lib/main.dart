import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
