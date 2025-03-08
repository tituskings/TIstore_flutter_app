import 'package:flutter/material.dart';
import 'package:ti_store_app/data/model.dart';
import 'package:ti_store_app/screens/main_screen.dart';

class ShoppingCartScreen extends StatefulWidget {
  ShoppingCartScreen({
    super.key,
  });

  static List<ItemModel> cart = [];
  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();

  static void addProductToCart(ItemModel itemModel) {
    cart.add(itemModel);
  }

  static void removeProductToCart(ItemModel itemModel) {
    cart.remove(itemModel);
  }
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0.0;

    ShoppingCartScreen.cart.forEach((ItemModel) {
      totalPrice += ItemModel.price;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Shopping Cart',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ShoppingCartScreen.cart.isEmpty
                  ? Center(child: Text("No item on cart"))
                  : ListView.builder(
                      itemCount: ShoppingCartScreen.cart.length,
                      itemBuilder: (context, index) {
                        final items = ShoppingCartScreen.cart[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(items.image),
                              // NetworkImage(listData[index]['image']),
                            ),
                            title: Text(items.name),
                            trailing: Text('\$${items.price.toString()}'),
                          ),
                        );
                      })),
          Column(
            children: [
              Text(
                'Total Price: \$${totalPrice.toString()}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.blue,
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(100),
                        content: Text('Checkout in progress....'),
                        onVisible: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                        },
                      ));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ))),
              )
            ],
          )
        ],
      ),
    );
  }
}
