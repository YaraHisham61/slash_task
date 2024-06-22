// ignore_for_file: prefer__ructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slash/components/bestselling_list.dart';
import 'package:slash/components/categories_list.dart';
import 'package:slash/components/custom_app_bar.dart';
import 'package:slash/components/custom_bottom_navigation_bar.dart';
import 'package:slash/components/custom_text_field.dart';
import 'package:slash/components/image_slider.dart';

class HomeScreenMobile extends StatelessWidget {
  HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CustomTextField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ImageSlider(),
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
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
