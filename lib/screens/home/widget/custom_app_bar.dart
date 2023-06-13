import 'package:cemanting_art_application/screens/home/widget/shopping.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, 
      left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(text: 
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to\nCemanting Art   ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  )),
                  TextSpan(
                    text: '👀',
                    style: TextStyle(
                      fontSize: 22
                    )
                  )
                ]
              ))
            ],
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1)
                    )
                  ]
                ),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ShoppingCart())
                      );
                  },
                  color: Colors.white,
                  iconSize: 25,
                )
              )
            ],
          )
        ]
      )
    );
  }
}