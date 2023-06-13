import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String title;
  CategoriesList(this.title);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
          title,
          style: TextStyle (
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
          ),
        ],
      ),
    );
  }
}