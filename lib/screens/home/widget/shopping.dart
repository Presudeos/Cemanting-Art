import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {


  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: Text('No orders yet...',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.grey.withOpacity(0.7)
              ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 25,
              right: 25
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.black.withOpacity(0.8),
                    iconSize: 19,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

