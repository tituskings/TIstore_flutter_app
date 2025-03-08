import 'package:flutter/material.dart';
import 'package:ti_store_app/data/model.dart';
import 'package:ti_store_app/screens/shopping_cart_screen.dart';

class ShowBottomScreen extends StatelessWidget {
  final ItemModel newData;

  const ShowBottomScreen({super.key, required this.newData});

  @override
  Widget build(BuildContext context) {
    // void ShowAddDialogMessage() {
    //   showDialog(
    //       context: context,
    //       builder: (context) {
    //         return AlertDialog(
    //           content: Text(
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

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(newData.image))),
            ),
          ),
          Center(child: Text(newData.name)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  'Price:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(newData.price.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DESCRIPTION',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(newData.description)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ShoppingCartScreen.addProductToCart(newData);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.blue,
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(100),
                  content: Text('Thank you for adding item to cart....'),
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Add To Cart'),
                ],
              ))
        ],
      ),
    );
  }
}
