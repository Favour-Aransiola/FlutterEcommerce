import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/Http/httpGetClient.dart';
import 'package:flutter_application_3/screens/Http/httpget.dart';
import 'package:flutter_application_3/screens/home/widget/favourite.dart';
import 'package:flutter_application_3/screens/secondpage/secondPage.dart';


class Arrival extends StatefulWidget {
  State<StatefulWidget> createState(){
    return ArrivalState();
  }
}
class ArrivalState extends State<Arrival>{
  late HttpGetClient httpclient;
  late  Future<List<HttpGet>> arrival;
  @override
  void initState() {
    super.initState();
    httpclient= HttpGetClient();
    arrival = httpclient.fetchFromNet();
  }
  Future<void> refresh()async{
    setState(() {
      arrival = httpclient.fetchFromNet();
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return 
    FutureBuilder<List<HttpGet>>(
      builder: (context, snapshot){
        if (snapshot.hasData){
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(recieved: snapshot.data![index],)));
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
                        image: DecorationImage(image: AssetImage('${snapshot.data![index].img}'), fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(height: 9,),
                    Text('${snapshot.data![index].name}}', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(height: 9,),
                    Text('${snapshot.data![index].type}', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(height: 9,),
                    Text('\$ ${snapshot.data![index].price}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.amber)),
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
                itemCount: snapshot.data!.length);
        }else if(snapshot.hasError){
          return Container(
            child: Center(child: 
            Row(
              children: [
                Text('Sorry, An Error Occured'),
                OutlineButton(onPressed: (){
                    setState(() {
                      arrival = httpclient.fetchFromNet();   
                    });
                   
                }, child: Text('Refresh'),)
              ],
            ),),
          );
        }else{
          return Container(
            child: Center(child: Row(children: [
              CircularProgressIndicator(),
              SizedBox(width:20),
              Text('Loading Please Wait')
            ],),),
          );
        }
      },
      future: arrival,
     );
  }
}