import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width*0.95,
        decoration:BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[BoxShadow(color: Colors.black.withOpacity(0.1), 
          spreadRadius:1, 
          blurRadius: 5)]
        ),
        padding: EdgeInsets.symmetric(vertical:5, horizontal:20),
        margin:EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Icon(Icons.home, color:Colors.amber, size:35),
            Icon(Icons.crop_square_rounded, color: Colors.black.withOpacity(0.3), size:25),
            Icon(Icons.favorite_border_outlined,color: Colors.black.withOpacity(0.3), size:25),
            Icon(Icons.account_circle_outlined, color: Colors.black.withOpacity(0.3), size:25),
          ]
        ),
      );
    
  }
}