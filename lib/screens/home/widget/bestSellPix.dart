import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/widget/favourite.dart';

import 'models/arrival.dart';

class BestOfSellList extends StatelessWidget {
  BestOfSellList({Key? key}) : super(key: key);
  List<Arrivals> myArrivals =[
    Arrivals(img:'image1.jpg',name: 'Gucci Oversize', type: 'Hoodie', price: 79.99),
    Arrivals(img:'image2.jpg',name: 'Men Jacket', type: 'Rain Jacket', price: 39.02)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index){
        return Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:[BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius:2)],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage('${myArrivals[index].img}'), fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('${myArrivals[index].name}', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(height: 3,),
                    Text('${myArrivals[index].type}', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(height: 3,),
                    Text('\$ ${myArrivals[index].price}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.amber)),
                    ],),
                  ],),
              
            Positioned(
              right: 15,
              top:16,
              child: Favourite(size:30.0)
            )
            ],
          ),
        );
      }, 
      separatorBuilder: (context,_){return SizedBox(height: 15);}, 
      itemCount: myArrivals.length);
  }
}