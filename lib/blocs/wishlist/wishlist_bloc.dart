import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kellershop/blocs/wishlist/wishlist_event.dart';
import 'package:kellershop/blocs/wishlist/wishlist_state.dart';
import 'package:kellershop/models/model.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState> {
  WishListBloc() : super(WishListLoading());

  @override
  Stream<WishListState> mapEventToState(WishListEvent event) async* {
    if (event is StarWishList) {
      yield* _mapStartWishListToState();
    } else if (event is AddWishListProducts) {
      yield* _mapAddtWishListProductToState(event, state);
    } else if (event is RemoveWishListProducts) {
      yield* _mapRemovetWishListProductToState(event, state);
    }
  }

  Stream<WishListState> _mapStartWishListToState() async* {
    yield WishListLoading();
    try {
      await Future<void>.delayed(Duration(seconds: 2));
      yield const WishListLoaded();
    } catch (_) {}
  }

  Stream<WishListState> _mapAddtWishListProductToState(
      AddWishListProducts event, WishListState state) async* {
    if (state is WishListLoaded) {
      try {
        yield WishListLoaded(
            wishList: WishList(
                products: List.from(state.wishList.products)
                  ..add(event.product)));
      } catch (e) {}
    }
  }

  Stream<WishListState> _mapRemovetWishListProductToState(
      RemoveWishListProducts event, WishListState state) async* {
    if (state is WishListLoaded) {
      try {
        yield WishListLoaded(
            wishList: WishList(
                products: List.from(state.wishList.products)
                  ..remove(event.product)));
      } catch (e) {}
    }
  }
}
