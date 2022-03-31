import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.9,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15),
      ), 
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.amber,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText:'Search Aesthetic Shirt',
                  prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(0.2)),
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.2)),
                  border: InputBorder.none,
                  
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width:65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber
            ),
            child: Icon(
              Icons.filter_tilt_shift_sharp),
          )
        ],
      )
    );
  }
}