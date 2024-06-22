import 'package:flutter/material.dart';
import 'package:slash/components/custom_text.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    super.key,
    required this.text,
    this.isWeb = false,
  });
  final String text;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          weight: isWeb ? FontWeight.w600 : FontWeight.w500,
          size: isWeb ? 21 : 18,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomText(
                text: "See all",
                color: Colors.black87,
                size: isWeb ? 16 : 14,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(15, 0, 0, 0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.all(5),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
