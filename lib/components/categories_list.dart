import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash/components/category_container.dart';
import 'package:slash/components/custom_heading.dart';
import 'package:slash/models/category_model.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(
      name: "Fashion",
      icon: FontAwesomeIcons.shirt,
    ),
    CategoryModel(
      name: "Games",
      icon: FontAwesomeIcons.diceFive,
    ),
    CategoryModel(
      name: "Accessories",
      icon: FontAwesomeIcons.glasses,
    ),
    CategoryModel(
      name: "Books",
      icon: FontAwesomeIcons.book,
    ),
    CategoryModel(
      name: "Fashion",
      icon: FontAwesomeIcons.shirt,
    ),
    CategoryModel(
      name: "Games",
      icon: FontAwesomeIcons.diceFive,
    ),
    CategoryModel(
      name: "Accessories",
      icon: FontAwesomeIcons.glasses,
    ),
    CategoryModel(
      name: "Books",
      icon: FontAwesomeIcons.book,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomHeading(
          text: "Categories",
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.2,
          ),
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) =>
                CategoryContainer(category: categories[index]),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 15.0),
          ),
        ),
      ],
    );
  }
}
