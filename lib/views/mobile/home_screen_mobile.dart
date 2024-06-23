import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/components/categories_list.dart';
import 'package:slash/components/custom_text_field.dart';
import 'package:slash/components/image_slider.dart';
import 'package:slash/components/products_list.dart';
import 'package:slash/cubits/get_best_selling_cubit/get_best_selling_cubit.dart';
import 'package:slash/cubits/get_best_selling_cubit/get_best_selling_states.dart';
import 'package:slash/cubits/get_new_arrivals_cubit/get_new_arrivals_cubit.dart';
import 'package:slash/cubits/get_new_arrivals_cubit/get_new_arrivals_states.dart';
import 'package:slash/cubits/get_recommended_cubit/get_recommended_cubit.dart';
import 'package:slash/cubits/get_recommended_cubit/get_recommended_states.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetBestSellingCubit>(context).getBestSelling();
    BlocProvider.of<GetNewArrivalCubit>(context).getNewArrival();
    BlocProvider.of<GetRecommendedCubit>(context).getRecommended();
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomTextField(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: ImageSlider(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: CategoriesList(),
              ),
              BlocBuilder<GetBestSellingCubit, BestSellingStates>(
                builder: (context, state) {
                  if (state is BestSellingError) {
                    return Center(
                      child: Text(state.error),
                    );
                  } else if (state is BestSellingLoaded) {
                    return ProductsList(
                        products: state.bestSellingList, title: "Best Selling");
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              BlocBuilder<GetNewArrivalCubit, NewArrivalStates>(
                builder: (context, state) {
                  if (state is NewArrivalError) {
                    return Center(
                      child: Text(state.error),
                    );
                  } else if (state is NewArrivalLoaded) {
                    return ProductsList(
                        products: state.newArrivalList, title: "New Arrival");
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              BlocBuilder<GetRecommendedCubit, RecommendedStates>(
                builder: (context, state) {
                  if (state is RecommendedError) {
                    return Center(
                      child: Text(state.error),
                    );
                  } else if (state is RecommendedLoaded) {
                    return ProductsList(
                        products: state.recommendedList,
                        title: "Recommended For You");
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
