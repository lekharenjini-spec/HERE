 
 import 'package:flutter/material.dart';
 import 'home_page.dart';
 

void main() {
  runApp(const HereWebsite());
}

class HereWebsite extends StatelessWidget {
  const HereWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HERE',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const HomePage(),
    );
  }
}
