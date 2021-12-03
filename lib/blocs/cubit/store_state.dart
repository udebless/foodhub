part of 'store_cubit.dart';

class StoreState {
  List<Product> customersalsoviewed;
  List<Product> allProduct;
  List<Product> forYou;

  StoreState({
    this.customersalsoviewed = const [],
    this.allProduct = const [],
     this.forYou = const [],
  });

  StoreState copyWith(
      {List<Product>? customersalsoviewed, List<Product>? allProduct, List<Product>? forYou,}) {
    return StoreState(
        customersalsoviewed: customersalsoviewed ?? this.customersalsoviewed,
        allProduct: allProduct ?? this.allProduct,
        forYou: forYou?? this.forYou,
        );
  }
}
