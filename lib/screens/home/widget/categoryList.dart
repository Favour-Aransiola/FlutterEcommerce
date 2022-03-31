import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);
  List <String> Categories = ['Woman', 'T-Shirt', 'Dress'];
  @override
  Widget build(BuildContext context) {
    
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap:true,
      itemBuilder: (context, index){
        return Container(alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber.withOpacity(0.3)
        ),
        child: Text('${Categories[index]}'),
        );
      }, 
      separatorBuilder: (context, _){
        return SizedBox(width: 15);
      }, 
      itemCount: Categories.length);
  }
}