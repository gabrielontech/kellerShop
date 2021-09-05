import 'package:equatable/equatable.dart';
import 'package:kellershop/models/model.dart';

class WishListEvent extends Equatable {
  const WishListEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class StarWishList extends WishListEvent {}

class AddWishListProducts extends WishListEvent {
  final Product product;

  const AddWishListProducts(this.product);
  @override
  // TODO: implement props
  List<Object?> get props => [product];
}

class RemoveWishListProducts extends WishListEvent {
  final Product product;

  const RemoveWishListProducts(this.product);
  @override
  // TODO: implement props
  List<Object?> get props => [product];
}
