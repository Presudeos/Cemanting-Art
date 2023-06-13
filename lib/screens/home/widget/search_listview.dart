import 'package:cemanting_art_application/models/things.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatefulWidget {

  @override
  State<SearchListView> createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {

 final controller = TextEditingController();
 List<Things> thing = allThings;

  @override
  Widget build(BuildContext context) => (
     Scaffold(
      appBar: AppBar (
        title: const Text('View all',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.deepOrange
                  )
                )
              ),
              onChanged: searchThings,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: thing.length,
              itemBuilder: (context, index) {
                final things = thing[index]; 
                  return ListTile(
                    leading: Image.asset(
                      things.imageUrl,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(things.title),
                  );
              },
            ),
          )
        ],
      ),
     )
  );
  void searchThings (String query) {
    final suggestions = allThings.where((thing)  {
      final thingTitle = thing.title.toLowerCase();
      final input = query.toLowerCase();

      return thingTitle.contains(input);
    }).toList();

    setState(() => thing = suggestions);
  }
}