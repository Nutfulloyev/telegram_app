import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 70,
            color: Colors.white,
          ),
        ),
        Container(
          height: 3,
          color: Colors.grey.shade400,
        ),
      ],
    );
  }
}