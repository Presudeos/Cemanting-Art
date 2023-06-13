import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
           Center(
             child: Text('No favorites yet...',
             style: TextStyle(
               fontSize: 25,
               color: Colors.grey
             ),
             ),
           ),
         ],
       )
    );
  }
}