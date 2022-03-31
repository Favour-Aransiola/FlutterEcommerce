import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/widget/favourite.dart';
import 'package:flutter_application_3/screens/secondpage/secondPage.dart';

import 'models/arrival.dart';


class Arrival extends StatelessWidget {
  Arrival({Key? key}) : super(key: key);
  List<Arrivals> myArrivals =[
    Arrivals(img:'image1.jpg',name: 'Gucci Oversize', type: 'Hoodie', price: 79.99),
    Arrivals(img:'image2.jpg',name: 'Men Jacket', type: 'Rain Jacket', price: 39.02)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return Container(
          padding: EdgeInsets.all(15),
          child: Stack(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(recieved: myArrivals[index],)));
                },
                child: Container(width: 250, height: 350,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius:1,
                      )],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    width: 230,
                    height: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage('${myArrivals[index].img}'), fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 9,),
                  Text('${myArrivals[index].name}', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(height: 9,),
                  Text('${myArrivals[index].type}', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(height: 9,),
                  Text('\$ ${myArrivals[index].price}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.amber)),
                ],)
                ),
              ),
            Positioned(
              right: 20,
              top:20,
              child: Favourite(size:30.0)
            )
            ],
          ),
        );
      }, 
      separatorBuilder: (context,_){return SizedBox(width: 5);}, 
      itemCount: myArrivals.length);
  }
}