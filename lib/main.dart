import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: MantraDiva(),
  ));
}

class MantraDiva extends StatefulWidget {
  const MantraDiva({super.key});

  @override
  State<MantraDiva> createState() => _MantraDivaState();
}

class _MantraDivaState extends State<MantraDiva> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(
              () {
                number = Random().nextInt(5) + 1;
              },
            );
          },
          onDoubleTap: () {
            setState(() {
              number = 1;
            });
          },
          child: Image.asset("images/ball$number.png"),


      //  body: Center(
      //   child: GestureDetector(
      //     onTap: () {
      //       setState(() {
      //         number = Random().nextInt(5) + 1;
      //       });
      //     },
      //     child: Image.asset('images/ball$number.png',
      //     height: 300,),
      //   ),
      // ),   



        ),
      ),
    );
  }
}
