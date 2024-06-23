import 'package:flutter/material.dart';
import 'package:slash/components/custom_app_bar.dart';
import 'package:slash/components/custom_bottom_navigation_bar.dart';
import 'package:slash/views/cart_screen.dart';
import 'package:slash/views/favourites_screen.dart';
import 'package:slash/views/profile_screen.dart';
import 'package:slash/views/web/home_screen_web.dart';

class MainScreenWeb extends StatefulWidget {
  const MainScreenWeb({super.key});

  @override
  State<MainScreenWeb> createState() => _MainScreenWebState();
}

class _MainScreenWebState extends State<MainScreenWeb> with SingleTickerProviderStateMixin {
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
      appBar: const CustomAppBar(
        isWeb: true,
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeScreenWeb(),
          FavoritesScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(tabController: _tabController),
    );
  }
}
