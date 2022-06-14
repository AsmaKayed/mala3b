

import 'package:flutter/material.dart';

class Ama extends StatefulWidget {
  const Ama({Key? key}) : super(key: key);

  @override
  _AmaState createState() => _AmaState();
}

class _AmaState extends State<Ama> {
  // Generating a long list to fill the ListView
  final List<Map> data = List.generate(100,
          (index) => {'id': index, 'name': 'Item $index', 'isSelected': false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: SafeArea(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                    key: ValueKey(data[index]['name']),
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),

                    // The color depends on this is selected or not
                    color: data[index]['isSelected'] == true
                        ? Colors.amber
                        : Colors.white,
                    child: ListTile(
                      onTap: () {
                        // if this item isn't selected yet, "isSelected": false -> true
                        // If this item already is selected: "isSelected": true -> false
                        setState(() {
                          data[index]['isSelected'] = !data[index]['isSelected'];
                        });
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(data[index]['id'].toString())),
                      title: Text(data[index]['name']),
                    ));
              },
            )));
  }
}