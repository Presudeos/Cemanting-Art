import 'package:cemanting_art_application/models/clothes.dart';
import 'package:cemanting_art_application/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatefulWidget {
  final Clothes clothes;
  ClothesItem (this.clothes);

  @override
  _ClothesItemState createState() => _ClothesItemState();
}

class _ClothesItemState extends State<ClothesItem> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPage(widget.clothes)
            )
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(widget.clothes.imageUrl),
                        fit: BoxFit.fitHeight
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                        child: Text('50%\nOFF!!',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                    ),
                  )
                ],
              ),
              Text(widget.clothes.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5
              ),
              ),
              Text(widget.clothes.subtitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5
              ),
              ),
              Text(widget.clothes.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: Theme.of(context).primaryColor
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}