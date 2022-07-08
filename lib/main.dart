import 'package:flutter/material.dart';
import 'package:product_listing/extension/rating.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Listing',
      home: Product_List()));
}

// ignore: camel_case_types
class Product_List extends StatefulWidget {
  const Product_List({Key? key}) : super(key: key);

  @override
  State<Product_List> createState() => _Product_ListState();
}

// ignore: camel_case_types
class _Product_ListState extends State<Product_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing'),
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          children: const [
            ProductBox(
              name: 'Beats Pro 14',
              description: 'Light for Outdoor Recreation',
              price: 90,
              image: 'beats-pro-14.jpg',
            ),
            ProductBox(
              name: 'Beats EP',
              description: 'Best for Professional editing',
              price: 109,
              image: 'Beats-EP-On-Ear-Headphones.jpg',
            ),
            ProductBox(
              name: 'Beats v.14',
              description: 'Noise-cancelling headphones',
              price: 176,
              image: '2',
            ),
            ProductBox(
              name: 'JBL Headbeat 12',
              description: 'Noise-cancelling headphones',
              price: 200,
              image: 'jbl-tune-500bt-wireless-on-ear-headphones-black.jpg',
            ),
            ProductBox(
              name: 'Beats Pro 14',
              description: 'Noise-cancelling headphones',
              price: 349,
              image: 'MRJ82.jpg',
            ),
            ProductBox(
              name: 'Beats Pro 14',
              description: 'Noise-cancelling headphones',
              price: 215,
              image: '1.jpg',
            ),
          ]),
    );
  }
}

class ProductBox extends StatefulWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  late final String name;
  late final String description;
  late final int price;
  late String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/$image'),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      description,
                    ),
                    Text(
                      price.toString(),
                    ),
                    const RatingBox(),
                  ]),
            ))
          ],
        ),
      ),
    );
  }
}
