import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(text: TextSpan(
        children: [
          TextSpan(text: 'Gucci Oversize Hoodie, a hoodie with the Style of gucci made of soft silk fabric, and made with an oversized model according to today\'s times',style: TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16)),
          TextSpan(text: ' Read More', style: TextStyle(color: Colors.amber, fontSize:16))
        ]
      )),
    );
  }
}