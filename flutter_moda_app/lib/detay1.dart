import 'package:flutter/material.dart';

class Detay1 extends StatefulWidget {
  final String imgPath1;
  const Detay1({required this.imgPath1,super.key});

  @override
  State<Detay1> createState() => _Detay1State();
}

class _Detay1State extends State<Detay1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: widget.imgPath1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imgPath1),fit: BoxFit.cover)
             ),
          ),
        ),
    );
  }
}