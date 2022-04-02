import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/Http/httpget.dart';
import 'package:flutter_application_3/screens/home/widget/models/arrival.dart';

class SecondCustomBottomNav extends StatelessWidget {
  HttpGet? recieved;
  SecondCustomBottomNav({Key? key, this.recieved} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.transparent,
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price', style: TextStyle(fontSize: 16, color: Colors.grey)),
                Text('${recieved!.price}', style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Container(
            width:250,
            height:70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.amber),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Add to Cart', style: TextStyle(color: Colors.white, fontSize:20)),
              SizedBox(width:5),
              Icon(Icons.shopping_cart_outlined, color:Colors.white, size:25)
            ],),
          )
        ],
      )
    );
  }
}