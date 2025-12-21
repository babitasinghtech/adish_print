import 'package:flutter/material.dart';

class Apitesting extends StatelessWidget {
  const Apitesting({super.key});
  static const Baseurl = "https://via.placeholder.com/600/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API Testing')),
      body: Center(child: Image.network('${Baseurl}771796"')),
    );
  }
}
