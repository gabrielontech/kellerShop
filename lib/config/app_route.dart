import 'package:flutter/material.dart';
import 'package:kellershop/models/model.dart';
import 'package:kellershop/views/views_route.dart';

class AppRouter {
  static Route onGenerate(RouteSettings settings) {
    // ignore: avoid_print
    print('This is the route ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // ignore: no_duplicate_case_values
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text('Error')),
            ),
        settings: RouteSettings(name: '/error'));
  }
}
