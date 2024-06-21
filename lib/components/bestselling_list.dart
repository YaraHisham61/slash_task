import 'package:flutter/material.dart';
import 'package:slash/components/custom_card.dart';
import 'package:slash/components/custom_heading.dart';
import 'package:slash/models/data_model.dart';

class BestsellingList extends StatelessWidget {
  BestsellingList({super.key});
  final List<DataModel> bestsellings = [
    DataModel(
      imagePath: "assets/general.jpg",
      price: "55",
      name: "Stitch Keychain",
      id: "1",
    ),
    DataModel(
      imagePath: "assets/general.jpg",
      price: "55",
      name: "Stitch Keychain",
      id: "1",
    ),
    DataModel(
      imagePath: "assets/general.jpg",
      price: "55",
      name: "Stitch Keychain",
      id: "1",
    ),
    DataModel(
      imagePath: "assets/general.jpg",
      price: "55",
      name: "Stitch Keychain",
      id: "1",
    ),
    DataModel(
      imagePath: "assets/general.jpg",
      price: "55",
      name: "Stitch Keychain",
      id: "1",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomHeading(
          text: "Best Selling",
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.3,
          ),
          child: ListView.builder(
            itemCount: bestsellings.length,
            itemBuilder: (context, index) =>
                CustomCard(data: bestsellings[index]),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 15.0),
          ),
        ),
      ],
    );
  }
}
