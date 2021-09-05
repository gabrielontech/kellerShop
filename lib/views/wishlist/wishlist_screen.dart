import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kellershop/blocs/wishlist/wishlist_bloc.dart';
import 'package:kellershop/blocs/wishlist/wishlist_state.dart';
import 'package:kellershop/widgets/widgets_route.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => WishlistScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'WishList',
      ),
      bottomNavigationBar: const customNavBar(),
      body: BlocBuilder<WishListBloc, WishListState>(builder: (context, state) {
        if (state is WishListLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is WishListLoaded) {
          return GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.4),
              itemCount: state.wishList.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: state.wishList.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isWishList: true,
                  ),
                );
              });
        } else {
          return const Text('Something went wront');
        }
      }),
    );
  }
}
