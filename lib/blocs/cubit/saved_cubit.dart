import 'package:bloc/bloc.dart';
import 'package:foodhub/blocs/cubit/cart_cubit.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:meta/meta.dart';

part 'saved_state.dart';

class SavedCubit extends Cubit<SavedState> {
  SavedCubit() : super(SavedState());
  addSavedItem(Product product) {
    var products = state.savedItems.toList();

    products.add(product);

    emit(state.copyWith(savedItems: products));
  }

  removeFromSavedItems(Product product) {
    var products = state.savedItems.toList();
    products.removeWhere((element) => element.id == product.id);
    emit(state.copyWith(savedItems: products));
  }
}
