import 'package:flutter/material.dart';
import 'package:kellershop/widgets/widgets_route.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => ProductScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'product',
      ),
      bottomNavigationBar: customNavBar(),
    );
  }
}
