import 'package:flutter/material.dart';
import 'package:slash/components/custom_text.dart';
import 'package:slash/models/category_model.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black87,
            radius: 35,
            child: Icon(
              color: Colors.white,
              category.icon,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: CustomText(
              text: category.name,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
