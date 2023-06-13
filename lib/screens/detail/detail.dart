import 'package:cemanting_art_application/models/clothes.dart';
import 'package:cemanting_art_application/screens/detail/widget/add_cart.dart';
import 'package:cemanting_art_application/screens/detail/widget/clothes_info.dart';
import 'package:cemanting_art_application/screens/detail/widget/detail_app_bar.dart';
import 'package:cemanting_art_application/screens/detail/widget/size_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage (this.clothes);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(clothes),
              ClothesInfo(clothes),
              SizeList(),
              AddCart(clothes)
            ]
          ),
        ),
      ),
    );
  }
}