import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/cubits/get_best_selling_cubit/get_best_selling_cubit.dart';
import 'package:slash/cubits/get_new_arrivals_cubit/get_new_arrivals_cubit.dart';
import 'package:slash/cubits/get_recommended_cubit/get_recommended_cubit.dart';
import 'package:slash/services/products_service.dart';
import 'package:slash/views/mobile/main_screen_mobile.dart';
import 'package:slash/views/web/main_screen_web.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});
  final ProductsService productsService = ProductsService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productsService.getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.connectionState == ConnectionState.none ||
            snapshot.hasError) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return BlocProvider(
          create: (context) => GetBestSellingCubit(),
          child: BlocProvider(
            create: (context) => GetNewArrivalCubit(),
            child: BlocProvider(
              create: (context) => GetRecommendedCubit(),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    return const MainScreenMobile();
                  } else {
                    return const MainScreenWeb();
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
