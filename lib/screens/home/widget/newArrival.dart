import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('New Arrival', style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
          ),
          Row(children: [
            Text('View All', style: TextStyle(color: Colors.amber, fontSize: 20),),
            SizedBox(width: 10,),
            Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
              ),
              child: Icon(Icons.arrow_right, color: Colors.white, size: 30,)
            )
          ],)
      ],)
    );
  }
}