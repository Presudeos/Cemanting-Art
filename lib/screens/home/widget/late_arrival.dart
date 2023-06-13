import 'package:cemanting_art_application/models/shoes.dart';
import 'package:cemanting_art_application/screens/home/widget/categories_list.dart';
import 'package:cemanting_art_application/screens/home/widget/shoes_item.dart';
import 'package:flutter/material.dart';

class LateArrival extends StatelessWidget {
  final shoesList = Shoes.generateShoes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(    
        children: [
          CategoriesList('Best Shoes Sales'),
          Container(
            height: 290,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ShoesItem(shoesList[index]), 
              separatorBuilder: (_, index) => SizedBox(width: 10), 
              itemCount: shoesList.length
              ),
          )
        ],
      ),
    );
  }
}