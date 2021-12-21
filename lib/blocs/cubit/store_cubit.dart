import 'package:bloc/bloc.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:foodhub/food_hub/services/product_service.dart';
import 'package:meta/meta.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(StoreState());

  init() async {
    try {
      var customerViewed = await ProductService.customerAlsoViewed();
      customerViewed.removeWhere((e) => e == null);
      emit(state.copyWith(customersalsoviewed: List.from(customerViewed)));
    } catch (e) {
      print(e);
    }
    var justforU = await ProductService.JustForYou();
    emit(state.copyWith(forYou: List.from(justforU)));
    var allproducts = await ProductService().getAllProducts();
    emit(state.copyWith(allProduct: List.from(allproducts)));
  }
}
