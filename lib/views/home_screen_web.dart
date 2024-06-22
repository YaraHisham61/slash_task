import 'package:flutter/material.dart';
import 'package:slash/components/bestselling_list.dart';
import 'package:slash/components/categories_list.dart';
import 'package:slash/components/custom_app_bar.dart';
import 'package:slash/components/custom_bottom_navigation_bar.dart';
import 'package:slash/components/custom_text_field.dart';
import 'package:slash/components/image_slider.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(
          isWeb: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomTextField(
                  isWeb: true,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ImageSlider(
                  isWeb: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: CategoriesList(),
              ),
              BestsellingList(),
              BestsellingList(),
              BestsellingList(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}
