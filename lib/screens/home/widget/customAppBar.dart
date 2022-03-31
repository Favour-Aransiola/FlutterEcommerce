import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Howdy, What are you', style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold
            ),),
            Text('looking for? ', style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold
            )),
          ],),
          Container(
            child: Icon(Icons.shopping_basket_outlined, 
            size: 25, color:Colors.amber),
            width:45, height:45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white)
            )

    
        ]
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 100);
}