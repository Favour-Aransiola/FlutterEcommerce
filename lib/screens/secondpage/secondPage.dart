import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/Http/httpget.dart';
import 'package:flutter_application_3/screens/home/widget/models/arrival.dart';
import 'package:flutter_application_3/screens/secondpage/widgets/bodyText.dart';
import 'package:flutter_application_3/screens/secondpage/widgets/bottomScroll.dart';
import 'package:flutter_application_3/screens/secondpage/widgets/headerText.dart';
import 'package:flutter_application_3/screens/secondpage/widgets/secondCustomNav.dart';
import 'package:flutter_application_3/screens/secondpage/widgets/sideContainer.dart';
import 'package:flutter_application_3/screens/secondpage/widgets/size.dart';


class SecondPage extends StatefulWidget {
  HttpGet? recieved;
  SecondPage({Key? key, required this.recieved}) : super(key: key);
  
  
  State<StatefulWidget> createState(){
    return SecondPageState(recieved);
  }
  }
class SecondPageState extends State<SecondPage>{
    HttpGet? recieved; 
    SecondPageState(this.recieved);
  int activeIndex = 0;
  void changeDot(){

  }
  List<String> caro =['image1.jpg', 'image2.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Container(
              width:40, height:40,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.amber.withOpacity(0.5),
              shape: BoxShape.circle
            ),child: IconButton(icon: Icon(Icons.arrow_left_rounded, size:25), onPressed: (){Navigator.pop(context);},),
        ),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(right:15), child:Container(
              width:40, height:40,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.amber.withOpacity(0.5),
              shape: BoxShape.circle
            ),child: PopupMenuButton(
              child: Icon(Icons.more_horiz),
              itemBuilder: (context){
              return [
                PopupMenuItem(child: Text('Hello'))
              ];
            },))
            )
          ],
          ),

        body: Padding(
          padding: const EdgeInsets.all(1.0),
          child: SingleChildScrollView(
            child: Column(
              children:[
                Container(
                  width: double.infinity,
                  height: 550,
                  child: Stack(
                    children: [
                      CarouselSlider.builder(
                        itemCount: caro.length, 
                      itemBuilder: (context, index, realIndex){
                        return Container(
                          margin: EdgeInsets.all(5),
                          width: double.infinity,
                          height: 550,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('${recieved!.img}'), fit:BoxFit.cover)
                          ),
                        );
                      }, 
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        viewportFraction: 1,
                        height: 550,
                        initialPage: 0,
                        onPageChanged: (index, reason) => {
                        setState(()=>{
                          activeIndex =index
                        }),
                        },
                        
                      )),
                      Positioned(
                        bottom: 10,
                        left: (MediaQuery.of(context).size.width/2)-15,
                        child: BottomScroll(activeIndex:activeIndex)),

                      Positioned(right: 25, bottom: 60,
                      child: SideContainer()
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: HeaderText(recieved: recieved,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: BottomText(),
                ),
                SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.only(left:20),
                  width: double.infinity,
                  height: 40,
                  child: ClothSize())
                
              ]
            )
          ),
        ),
        bottomNavigationBar: SecondCustomBottomNav(recieved:recieved),
    );
  }
}