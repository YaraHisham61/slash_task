import 'package:flutter/material.dart';
import 'package:slash/components/custom_card.dart';
import 'package:slash/components/custom_heading.dart';
import 'package:slash/models/product_model.dart';

class ProductsList extends StatelessWidget {
  const ProductsList(
      {super.key,
      required this.products,
      required this.title,
      this.isWeb = false});
  final List<ProductModel> products;
  final String title;
  final bool isWeb;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomHeading(
          text: title,
          isWeb: isWeb,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) =>
                CustomCard(data: products[index], isWeb: isWeb),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 15.0),
          ),
        ),
      ],
    );
  }
}
