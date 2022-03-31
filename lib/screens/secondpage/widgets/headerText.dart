import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/widget/favourite.dart';
import 'package:flutter_application_3/screens/home/widget/models/arrival.dart';

class HeaderText extends StatefulWidget {
  Arrivals? recieved;
  HeaderText({Key? key, this.recieved}) : super(key: key);

  @override
  State<HeaderText> createState() => HeaderTextState(recieved);
}

class HeaderTextState extends State<HeaderText> {
  Arrivals? recieved;
  HeaderTextState(this.recieved);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text('${recieved!.name}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        Favourite(size: 40,)
      ],),
      SizedBox(height:2),
      Row(children: [
        Icon(Icons.star_border, size: 25, color:Colors.amber,),
        SizedBox(width:10),
        Text('4.5 (2.7k)', style:TextStyle(color: Colors.black.withOpacity(0.5), 
        fontSize: 15))
      ],)
    ],);
  }
}