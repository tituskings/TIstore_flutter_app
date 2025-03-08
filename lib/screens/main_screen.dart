import 'package:flutter/material.dart';
import 'package:ti_store_app/data/model.dart';
import 'package:ti_store_app/screens/shopping_cart_screen.dart';
import 'package:ti_store_app/screens/show_bottom_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ShoppingCartScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add_shopping_cart_outlined),
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: itemData.length,
                itemBuilder: (context, index) {
                  final newData = itemData[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return ShowBottomScreen(newData: newData);
                              });
                        },
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(newData.image),
                          // NetworkImage(listData[index]['image']),
                        ),
                        title: Text(newData.name),
                        trailing: Text('\$${newData.price.toString()}')),
                  );
                }),
          )
          //: ElevatedButton(onPressed: loadData, child: Text("load data"))
        ],
      ),
    );
  }
}
