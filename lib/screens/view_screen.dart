import 'package:flutter/material.dart';

class Viewscreen extends StatelessWidget {
  String title;
  String image;
  String price;
  String description;

  Viewscreen(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage(image))),
              ),
            ),
            Row(
              children: [
                Text(
                  'Price:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(price, style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DESCRIPTION',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(description)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
