import 'package:flutter/material.dart';

class BottomScroll extends StatefulWidget {
 int? activeIndex;
 BottomScroll({this.activeIndex});

  @override
  State<BottomScroll> createState() => BottomScrollState(index: activeIndex);
}

class BottomScrollState extends State<BottomScroll> {
  int? index;
  BottomScrollState({this.index});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width:30,
      height: 30,
      alignment:Alignment.center,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          width: 10,
          height:10,
          decoration: BoxDecoration(shape: BoxShape.circle, color: index==0?Colors.amber:Colors.grey.withOpacity(0.4)),
        ),
        Container(
          width: 10,
          height:10,
          decoration: BoxDecoration(shape: BoxShape.circle, color: index==1?Colors.amber:Colors.grey.withOpacity(0.4)),
        ),
        
      ],)
    );
  }
}