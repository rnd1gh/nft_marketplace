import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:nft_marketplace/screens/introduce_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroduceScreen(),
    );
  }
}
