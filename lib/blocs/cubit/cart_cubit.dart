import 'package:bloc/bloc.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
//import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState());

  addTocart(Product product) {
    var products = state.cartItems.toList();
    products.add(product);

    emit(state.copyWith(cartItems: products));
  }

  removeFromCart(Product product) {
    var products = state.cartItems.toList();
    products.removeWhere((element) => element.id == product.id);
    emit(state.copyWith(cartItems: products));
  }

  decreaseProductCount(String id) {
    var index = state.cartItems.indexWhere((element) => element.id == id);

    var product = state.cartItems[index];
    product.itemCount--;

    state.cartItems[index] = product;

    emit(state);
  }

  increaseProductCount(String id) {
     var index = state.cartItems.indexWhere((element) => element.id == id);

    var product = state.cartItems[index];
    product.itemCount++;

    state.cartItems[index] = product;

    emit(state);

  }
}
