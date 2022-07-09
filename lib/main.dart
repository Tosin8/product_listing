import 'package:flutter/material.dart';
import 'package:product_listing/extension/product.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
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
  final items = Product.getProduct();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Listing'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ProductBox(item: items[index]);
            }));
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.item}) : super(key: key);

  final Product item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 140,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset('assets/images/${item.image}'),
        Expanded(
            child: Container(
                padding: const EdgeInsets.all(5),
                child: ScopedModel<Product>(
                    model: item,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(item.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text(item.description),
                          Text(item.price.toString()),
                          ScopedModelDescendant<Product>(
                            builder: (context, child, model) => RatingBox(
                              item: item
                            ),
                          ),
                        ])))),
      ]),
    );
  }
}
