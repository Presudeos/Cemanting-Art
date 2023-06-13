import 'package:cemanting_art_application/models/clothes.dart';
import 'package:cemanting_art_application/screens/home/widget/categories_list.dart';
import 'package:cemanting_art_application/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList('Best Dress Sales'),
          Container(
            height: 290,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(clothesList[index]), 
              separatorBuilder: (_, index) => SizedBox(width: 10), 
              itemCount: clothesList.length
              ),
          )
        ],
      ),
    );
  }
}