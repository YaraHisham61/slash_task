import 'package:flutter/material.dart';
import 'package:slash/components/custom_text.dart';
import 'package:slash/models/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.data, this.isWeb = false});

  final ProductModel data;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isWeb
          ? const EdgeInsets.symmetric(horizontal: 10.0)
          : const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        width: isWeb
            ? MediaQuery.of(context).size.width * 0.15
            : MediaQuery.of(context).size.width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: isWeb
                  ? MediaQuery.of(context).size.height * 0.2
                  : MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(data.imagePath),
                  fit: BoxFit.fill,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: CustomText(
                text: data.name,
                color: Colors.black87,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "EGP ${data.price}",
                  color: Colors.black87,
                  weight: FontWeight.w600,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.circle,
                    ),
                    Icon(
                      Icons.add_circle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
