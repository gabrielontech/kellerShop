import 'package:flutter/material.dart';
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
    );
  }
}
