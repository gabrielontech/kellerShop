import 'package:flutter/material.dart';
import 'widgets_route.dart';

class customNavBar extends StatelessWidget {
  const customNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.teal[700],
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconNavBar(icon: Icons.home, routeName: '/'),
            IconNavBar(icon: Icons.shopping_cart, routeName: '/cart'),
            IconNavBar(icon: Icons.person, routeName: '/user'),
          ],
        ),
      ),
    );
  }
}
