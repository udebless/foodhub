import 'package:foodhub/food_hub/models/product_model.dart';

double calculateCart(List<Product> items) {
  double initialPrice = 0;

  for (var i = 0; i < items.length; i++) {
    var item = items[i];
    initialPrice += item.price * item.itemCount;
  }
  return initialPrice;
}
