// import 'package:flutter/material.dart';
// import 'dart:convert';

// import 'package:flutter/services.dart';
// import 'package:ti_store_app/screens/shopping_cart_screen.dart';

// class Mainscreen extends StatefulWidget {
//   const Mainscreen({super.key});

//   @override
//   State<Mainscreen> createState() => _MainscreenState();
// }

// class _MainscreenState extends State<Mainscreen> {
//   List<dynamic> listData = [];

//   List<Map<String, String>> fetchedData = [];

//   List<Map<dynamic, dynamic>> cartList = [];

//   Future<void> loadData() async {
//     final String jsonData =
//         await rootBundle.loadString('assets/localData.json');

//     final localData = jsonDecode(jsonData);

//     listData = localData["items"];

//     //print("number of item ${listData.length}");
//     setState(() {});
//   }

  // void ShowAddDialogMessage() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text(
  //             "Nice One! \n Thank you for adding item to cart \n Press Ok to continue",
  //             style: TextStyle(fontSize: 14),
  //           ),
  //           actions: [
  //             InkWell(
  //                 onTap: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text("Ok"))
  //           ],
  //         );
  //       });
  // }

//   void addDataToCartList(index) {
//     cartList.add({
//       "image": listData[index]?['image'] ?? "",
//       "name": listData[index]?['name'] ?? "",
//       "price": listData[index]?['price'].toString() ?? ""
//     });
//     setState(() {});

//     //print(cartList[index]['name']);

//     Navigator.pop(context);
//     ShowAddDialogMessage();
//     //print(fetchedData[0]['name']);
//   }

//   @override
//   void initState() {
//     loadData();
//     // TODO: implement initState
//     super.initState();
//   }

//   void shoppingPageFunction() {
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return ShoppingCartScreen(
//         cartList: cartList,
//       );
//     }));
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Text(
//               "TiGrace Online Store",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Icon(Icons.shopping_bag)
//           ],
//         ),
//         actions: [
//           InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return ShoppingCartScreen(
//                     cartList: cartList,
//                   );
//                 }));
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Icon(Icons.add_shopping_cart_outlined),
//               ))
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: listData.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListTile(
//                         onTap: () {
//                            showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return ;
//         });
//                         },
//                         leading: CircleAvatar(
//                           radius: 25,
//                           backgroundImage: AssetImage(listData[index]['image']),
//                           // NetworkImage(listData[index]['image']),
//                         ),
//                         title: Text(listData[index]['name']),
//                         trailing: Text(listData[index]['price'].toString())),
//                   );
//                 }),
//           )
//           //: ElevatedButton(onPressed: loadData, child: Text("load data"))
//         ],
//       ),
//     );
//   }
// }

//                                   // Viewscreen(
//                                   //   title: listData[index]['name'],
//                                   //   image: listData[index]['image'],
//                                   //   price: listData[index]['price'].toString(),
//                                   //   description: listData[index]['description'],
//                                   // ),