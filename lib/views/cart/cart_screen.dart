import 'package:flutter/material.dart';
import 'package:kellershop/widgets/widgets_route.dart';

// ignore: use_key_in_widget_constructors
class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => CartScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Cart',
      ),
      bottomNavigationBar: const customNavBar(),
    );
  }
}
