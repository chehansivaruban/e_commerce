import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPaddin,
      ),
      child: Text(
        product.description,
        style: const TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
