part of 'cart_cubit.dart';

class CartState {
  List<Product> cartItems;

  CartState({this.cartItems = const []});

  CartState copyWith({List<Product>? cartItems}) {
    return CartState(cartItems: cartItems ?? this.cartItems);
  }
}
