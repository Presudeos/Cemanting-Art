import 'package:cemanting_art_application/models/shoes.dart';
import 'package:cemanting_art_application/screens/detail/detail_shoes.dart';
import 'package:flutter/material.dart';

class ShoesItem extends StatelessWidget {
  final Shoes shoes;
  ShoesItem (this.shoes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPageShoes(shoes)
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
                        image: AssetImage(shoes.imageUrl),
                        fit: BoxFit.fitHeight
                      ),
                    ),
                  ),
                   Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                        child: Text('25%\nOFF!!',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                    ),
                  )
                ],
              ),
              Text(shoes.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5
              ),
              ),
              Text(shoes.subtitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5
              ),
              ),
              Text(shoes.price,
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