import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/widget/arrivalpix.dart';
import 'package:flutter_application_3/screens/home/widget/bestOfSell.dart';
import 'package:flutter_application_3/screens/home/widget/bestSellPix.dart';
import 'package:flutter_application_3/screens/home/widget/categoryList.dart';
import 'package:flutter_application_3/screens/home/widget/customAppBar.dart';
import 'package:flutter_application_3/screens/home/widget/customBottomNav.dart';
import 'package:flutter_application_3/screens/home/widget/newArrival.dart';
import 'package:flutter_application_3/screens/home/widget/searchBar.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height:25
              ),
              Center(child: SearchBar()),
              SizedBox(
                height:20
              ),
              Container(child: CategoryList(),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              height:40, width: double.infinity),
              NewArrival(),
              SizedBox(height: 5),
              Container(
                alignment:Alignment.center,
                height: 370,
                width: double.infinity,
                child: Arrival()),
                BestOfSell(),
                Container(
                  padding:EdgeInsets.symmetric(horizontal: 10, vertical:0),
                  width: double.infinity,
                  child: BestOfSellList())
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNav(),
        ),
    );
  }
}