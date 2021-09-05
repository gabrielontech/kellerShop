import 'package:flutter/widgets.dart';
import 'package:kellershop/models/model.dart';

import 'product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 165,
            child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: ProductCard(product: products[index]),
                  );
                })),
      ),
    );
  }
}
