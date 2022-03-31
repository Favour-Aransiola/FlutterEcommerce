import 'package:flutter/material.dart';

class ClothSize extends StatelessWidget {
  ClothSize({Key? key}) : super(key: key);
  List<String> sizes=['S', 'M', 'L', 'XL', 'XXL'];
  @override 
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index){
      return Container(
        padding: EdgeInsets.all(10),
        child: Text('${sizes[index]}', style: TextStyle(fontSize:16,color: index==1?Colors.amber:Colors.grey),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: index==1?Colors.amber.withOpacity(0.2):Colors.transparent
        ),
      );
    }, 
    separatorBuilder: (context, _){return SizedBox(width:25);}, 
    itemCount: sizes.length);
  }
}