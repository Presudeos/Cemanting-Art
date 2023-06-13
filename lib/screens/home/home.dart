import 'package:cemanting_art_application/screens/home/widget/custom_app_bar.dart';
import 'package:cemanting_art_application/screens/home/widget/late_arrival.dart';
import 'package:cemanting_art_application/screens/home/widget/new_arrival.dart';
import 'package:cemanting_art_application/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SearchInput(),
              NewArrival(),
              LateArrival(),
            ],
          ),
        ),
      ),
    );
  }
}







         