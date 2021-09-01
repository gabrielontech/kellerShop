import 'package:flutter/material.dart';

class IconNavBar extends StatelessWidget {
  late IconData icon;
  late String routeName;

  IconNavBar({Key? key, required this.icon, required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      icon: Icon(icon),
      color: Colors.white,
    );
  }
}
