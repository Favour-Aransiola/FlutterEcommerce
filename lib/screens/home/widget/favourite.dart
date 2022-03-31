import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  double? size;
  
  Favourite({Key? key, required this.size}) : super(key: key);
  late double? iconSize= size!-10.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.5),
      ),
      child: Icon(Icons.favorite, size:iconSize, color:Colors.red)

    );
  }
}