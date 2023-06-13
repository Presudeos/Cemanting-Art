import 'package:cemanting_art_application/models/shoes.dart';
import 'package:flutter/material.dart';

class AddCart extends StatelessWidget {
  final Shoes shoes;
  AddCart(this.shoes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey
              ),
              ),
              Text(shoes.price,
              style: TextStyle(
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              )
            ],
          ),
          SizedBox(width: 27),
          Expanded(
            child: Container(
              height: 51,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  primary: Theme.of(context).primaryColor
                ),
                onPressed: () {}, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add to Cart',
                    style: TextStyle(
                      fontSize: 18
                    ),
                    ),
                    SizedBox(
                    width: 10,
                    ),
                    Icon (Icons.shopping_cart_outlined)
                  ],
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}