// ignore_for_file: prefer__ructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash/components/bestselling_list.dart';
import 'package:slash/components/categories_list.dart';
import 'package:slash/components/custom_app_bar.dart';
import 'package:slash/components/custom_bottom_navigation_bar.dart';
import 'package:slash/components/image_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(
                            FontAwesomeIcons.sliders,
                          ),
                        ),
                      ],
                    ),
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
