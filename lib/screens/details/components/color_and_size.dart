import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Color",
              ),
              Row(
                children: const [
                  ColorDot(
                    isSelected: true,
                    color: Color(
                      0xFF356C95,
                    ),
                  ),
                  ColorDot(
                    color: Color(
                      0xFFF8C078,
                    ),
                  ),
                  ColorDot(
                    color: Color(
                      0xFFA29B9B,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(
                  text: "Sold\n",
                ),
                TextSpan(
                  text: "${product.size} ",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
