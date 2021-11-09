import 'package:foodhub/food_hub/models/category.dart';
import 'package:foodhub/food_hub/models/product_model.dart';

class ProductService {
  static Product getProductById(String id) {
    return Product(
        productDescription: 'this is an egg',
        price: 64,
        nutritionalValue: [
          'Calories',
              'fat',
          'cholesterol',
          'Saturated fats'
        ],
        productName: 'Egg',
        customerName: 'Emeka',
        reviewHeading: 'Horrible',
        review: 'I was delivered a spoilt product',
        date: DateTime.now(),
        id: '2');
  }

 static List <Product> getAllPrpducts() {
    var list =<Product> [];

    for (var i = 0; i < 10; i++) {
      list.add(getProductById(i.toString()));
    }
    return list;
  }
  static List <Product> getSavedItems() {
    var list =<Product> [];

    for (var i = 0; i < 10; i++) {
      list.add(getProductById(i.toString()));
    }
    return list;
  }
    static List <Product> customerAlsoViewed() {
    var list =<Product> [];

    for (var i = 0; i < 10; i++) {
      list.add(getProductById(i.toString()));
    }
    return list;
  }
      static List <Product> justForYou() {
    var list =<Product> [];

    for (var i = 0; i < 10; i++) {
      list.add(getProductById(i.toString()));
    }
    return list;
  }
      static List <Category> productCategory() {
    var list =<Category> [

Category('Fruits'),
Category('Vegetable'),
Category('Cereals'),
Category('Ingredients'),
      
    ];

  
    
    return list;
  }
}
