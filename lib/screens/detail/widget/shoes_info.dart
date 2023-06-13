import 'package:cemanting_art_application/models/shoes.dart';
import 'package:cemanting_art_application/screens/detail/widget/neu_button.dart';
import 'package:flutter/material.dart';



class ShoesInfo extends StatefulWidget {
  final Shoes shoes;
  ShoesInfo(this.shoes);

  @override
  _ShoesInfoState createState() => _ShoesInfoState();
}

class _ShoesInfoState extends State<ShoesInfo> {

  bool isButtonPressed = false;
  void buttonPressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${widget.shoes.title} ${widget.shoes.subtitle}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21
              ),
              ),
              Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    shape: BoxShape.circle
                    ),
                    child: NeuButton(
                      onTap: buttonPressed,
                      isButtonPressed: isButtonPressed,
                    )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.star_border,
                color: Theme.of(context).primaryColor,
                ),
                Text('4.7 (5k+)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),
                )
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.7), height: 1.3
                  )
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}