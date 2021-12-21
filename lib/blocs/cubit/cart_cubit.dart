import 'package:bloc/bloc.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
//import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState());

  addTocart(Product product) {
    var products = state.cartItems.toList();
    if (!isAdded(product.id)) {
      products.add(product);
    }

    emit(state.copyWith(cartItems: products));
  }

  removeFromCart(Product product) {
    var products = state.cartItems.toList();
    products.removeWhere((element) => element.id == product.id);
    emit(state.copyWith(cartItems: products));
  }

  changeProductCount(String id, {bool isAdd = false}) {
    var cartItems = state.cartItems.map((e) {
      if (e.id == id) {
        if (isAdd) {
          e.itemCount += 1;
        }
        else
        if(e.itemCount!=1){
          e.itemCount -= 1;
        }
        
      }
      else{}
      return e;
    }).toList();

    emit(state.copyWith(cartItems: cartItems));
  }

 

  isAdded(String id) {
    var index = state.cartItems.indexWhere((element) => element.id == id);

    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
