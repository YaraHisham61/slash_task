import 'package:flutter/material.dart';
import 'package:slash/components/custom_text.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          weight: FontWeight.w500,
          size: 18,
        ),
        Row(
          children: [
            const CustomText(
              text: "See all",
              color: Colors.black87,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
