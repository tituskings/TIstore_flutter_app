import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ti_store_app/screens/view_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<dynamic> listData = [];

  Future<void> loadData() async {
    final String jsonData =
        await rootBundle.loadString('assets/localData.json');

    final localData = jsonDecode(jsonData);

    listData = localData["items"];

    //print("number of item ${listData.length}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "TiGrace Online Store",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.shopping_bag)
          ],
        ),
      ),
      body: Column(
        children: [
          listData.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                      itemCount: listData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Viewscreen(
                                    title: listData[index]['name'],
                                    image: listData[index]['image'],
                                    price: listData[index]['price'].toString(),
                                    description: listData[index]['description'],
                                  );
                                }));
                              },
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage(listData[index]['image']),
                                // NetworkImage(listData[index]['image']),
                              ),
                              title: Text(listData[index]['name']),
                              trailing:
                                  Text(listData[index]['price'].toString())),
                        );
                      }),
                )
              : ElevatedButton(onPressed: loadData, child: Text("load data"))
        ],
      ),
    );
  }
}
