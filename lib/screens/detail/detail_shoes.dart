import 'package:cemanting_art_application/models/shoes.dart';
import 'package:cemanting_art_application/screens/detail/widget/add_cart_shoes.dart';
import 'package:cemanting_art_application/screens/detail/widget/detail_app_bar_shoes.dart';
import 'package:cemanting_art_application/screens/detail/widget/shoes_info.dart';
import 'package:cemanting_art_application/screens/detail/widget/size_list.dart';
import 'package:flutter/material.dart';

class DetailPageShoes extends StatelessWidget {
  final Shoes shoes;
  DetailPageShoes (this.shoes);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(shoes),
              ShoesInfo(shoes),
              SizeList(),
              AddCart(shoes)
            ]
          ),
        ),
      ),
    );
  }
}