import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kellershop/blocs/wishlist/wishlist_bloc.dart';
import 'package:kellershop/blocs/wishlist/wishlist_event.dart';
import 'package:kellershop/config/app_route.dart';
import 'package:kellershop/config/theme.dart';
import 'package:kellershop/views/views_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishListBloc()
            ..add(
              StarWishList(),
            ),
        )
      ],
      child: MaterialApp(
        title: 'KellerShop',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
