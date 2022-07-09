import 'package:flutter/material.dart';
import 'product.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int rating = 0;

  void updateRatingAsOne() {
    setState(() {
      rating = 1;
    });
  }

  void updateRatingAsTwo() {
    setState(() {
      rating = 2;
    });
  }

  void updateRatingAsThree() {
    setState(() {
      rating = 3;
    });
  }

  final Product item;

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    double _size = 20;
    // ignore: avoid_print
    print(item.rating);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (item.rating >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: () => item.updateRatingAsOne(),
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (item.rating >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: () => item.updateRatingAsTwo(),
            iconSize: _size,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (item.rating >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: () => item.updateRatingAsThree(),
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
