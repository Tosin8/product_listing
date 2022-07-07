import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Product Listing', home: Product_List()));
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
        const Text('Product Listing'),
      ),
      body: ListView(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: const [
          ProductBox(), 
          ProductBox(),
        ]),
    );
  }
}

class ProductBox extends StatefulWidget {
  const ProductBox({Key? key}) : super(key: key);

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Card(
        child: Row(
          child: Image.asset('assets/images/' + images), 
          Expanded(
            child:Column(

            ) ,)
        )
          
          
        ),
      ),
    )
    
  }
}