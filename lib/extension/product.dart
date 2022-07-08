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
