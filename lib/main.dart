import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/cubits/get_best_selling_cubit/get_best_selling_cubit.dart';
import 'package:slash/cubits/get_new_arrivals_cubit/get_new_arrivals_cubit.dart';
import 'package:slash/cubits/get_recommended_cubit/get_recommended_cubit.dart';
import 'package:slash/services/products_service.dart';
import 'package:slash/views/home_screen_mobile.dart';
import 'package:slash/views/home_screen_web.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetBestSellingCubit(),
      child: BlocProvider(
        create: (context) => GetNewArrivalCubit(),
        child: BlocProvider(
          create: (context) => GetRecommendedCubit(),
          child: MaterialApp(
            title: 'Slash Task',
            debugShowCheckedModeBanner: false,
            home: ResponsiveLayout(),
          ),
        ),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});
  final ProductsService productsService = ProductsService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productsService.getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.connectionState == ConnectionState.none || snapshot.hasError) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return HomeScreenMobile();
            } else {
              return const HomeScreenWeb();
            }
          },
        );
      },
    );
  }
}
