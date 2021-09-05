import 'package:equatable/equatable.dart';
import 'package:kellershop/models/model.dart';

abstract class WishListState extends Equatable {
  const WishListState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WishListLoading extends WishListState {}

class WishListLoaded extends WishListState {
  final WishList wishList;

  const WishListLoaded({this.wishList = const WishList()});

  @override
  // TODO: implement props
  List<Object?> get props => [wishList];
}

class WishListError extends WishListState {}
