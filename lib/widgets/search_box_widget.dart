import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget searchBox(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    ),
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child:  TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: tdBlack, size: 20,),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Search here",
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    ),
  );
}