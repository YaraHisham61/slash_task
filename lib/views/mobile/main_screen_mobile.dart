import 'package:flutter/material.dart';
import 'package:slash/components/custom_app_bar.dart';
import 'package:slash/components/custom_bottom_navigation_bar.dart';
import 'package:slash/views/cart_screen.dart';
import 'package:slash/views/favourites_screen.dart';
import 'package:slash/views/mobile/home_screen_mobile.dart';
import 'package:slash/views/profile_screen.dart';

class MainScreenMobile extends StatefulWidget {
  const MainScreenMobile({super.key});

  @override
  State<MainScreenMobile> createState() => _MainScreenMobileState();
}

class _MainScreenMobileState extends State<MainScreenMobile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeScreenMobile(),
          FavoritesScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(tabController: _tabController),
    );
  }
}
