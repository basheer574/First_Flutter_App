import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MaterialApp(
    home: Page1(),
    debugShowCheckedModeBanner: false,
  ));
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Flutter is fun"),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: ListView.builder(scrollDirection: Axis.horizontal,
            itemBuilder: (itemBuilder, index) {
          return Container(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            width: 500,
            height: 500,
            child: Text("Color $index and For Free"),
          );
        })
    );
  }
}
