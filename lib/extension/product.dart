// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;

  Product(
    this.name,
    this.description,
    this.price,
    this.image,
    this.rating,
  );

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['name'] as String,
      json['description'] as String,
      json['price'] as int,
      json['image'] as String,
      json['rating'] as int,
    );
  }

  void updateRating(int myRating) {
    rating = myRating;

    notifyListeners();
  }
}


static List<Product> getProduct(){
  List<Product> items = <Product>[]; 

  items.add(Product(
    'Beats Pro 14',
    'Light for Outdoor Recreation',
    90,
    'beats-pro-14.jpg',
    0,
  ));
  items.add(Product(
    'Beats EP',
    'Best for Professional editing',
    109,
    'Beats-EP-On-Ear-Headphones.jpg',
    0,
  ));

  items.add(Product(
    'Beats v.14',
    'Noise-cancelling headphones',
    176,
    '2.jpg',
    0,
  ));
  items.add(Product(
    'JBL Headbeat 12',
    'Noise-cancelling headphones',
    200,
    'jbl-tune-500bt-wireless-on-ear-headphones-black.jpg',
    0,
  ));

  items.add(Product(
    'Beats Pro 14',
    'Noise-cancelling headphones',
    349,
    'MRJ82.jpg',
    0,
  ));
  
  items.add(Product(
    'Beats Pro 14',
    'Noise-cancelling headphones',
    215,
    '1.jpg',
    0,
  ));

