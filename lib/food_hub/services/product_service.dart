import 'package:foodhub/food_hub/models/category.dart';
import 'package:foodhub/food_hub/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodhub/food_hub/models/review_model.dart';
import 'package:intl/intl.dart';

FirebaseFirestore database = FirebaseFirestore.instance;

final productRef = database.collection('products').withConverter<Product>(
      fromFirestore: (snapshots, _) => Product.fromJson(snapshots.data()!),
      toFirestore: (products, _) => products.toJson(),
    );
    final reviewRef = database.collection('products/id/dgdg').withConverter<Product>(
      fromFirestore: (snapshots, _) => Product.fromJson(snapshots.data()!),
      toFirestore: (products, _) => products.toJson(),
    );




class ProductService {
  static Future<Product?> getProductById(String id) async {
    var prdct = await productRef.doc(id).get();
    return prdct.data();
  }

  Future<List<Product>> getAllProducts() async {
    var prdct = await productRef.get();
    return prdct.docs.map((e) => e.data()).toList();
  }

  static Future<List<Product>> getSavedItems() async {
    var prdct = await productRef.get();
    return prdct.docs.map((e) => e.data()).toList();
  }

  static Future<List<Product?>> customerAlsoViewed() async {
    var prdct = await database.doc('alsoViewed/jAX2DbrHJG45qBVoCKkR').get();
    var ids = prdct.data()?['ids'];
    if (ids != null) {
      var products = (ids as List).map((e) => getProductById(e));
      return Future.wait(products);
    }
    return [];
  }

  static Future<List<Product?>> JustForYou() async {
    var prdct = await database.doc('foryou/4sQhZ8vPQO4pkmJ2BpJP ').get();
    var ids = prdct.data()?['ids'];
    if (ids != null) {
      var products = (ids as List).map((e) => getProductById(e));
      return Future.wait(products);
    }
    return [];
  }

  static Future<List<Product>> justForYou() async {
    var prdct = await productRef.get();
    return prdct.docs.map((e) => e.data()).toList();
  }

  static List<Category> productCategory() {
    var list = <Category>[
      Category('Fruits'),
      Category('Vegetable'),
      Category('Cereals'),
      Category('Ingredients'),
    ];

    return list;
  }

  static Future<List<Product>> myCart() async {
    var prdct = await productRef.get();
    return prdct.docs.map((e) => e.data()).toList();
  }

  postReview(String productId) {
    var newReview = Review(
      reviewHeading: 'Not so good',
      customerName: 'matthew',
      reviewText:
          'I would have given 5 star but the product was not look fresh',
      customerImage: 'imageUrl',
      rating: '3',
      date: DateTime.now(),
    );
    return productRef
        .doc(productId)
        .collection('reviews')
        .add(newReview.toJson());
  }

  static Future<List<Review>> getReviews(String productId) async {
    var snap = await productRef
        .doc(productId)
        .collection('reviews')
        .get();
    return snap.docs.map((e) => Review.fromJson(e.data())).toList();
  }

  //  static List<Product> myCart() {
  // var list = <Product>[];

  // for (var i = 0; i < 10; i++) {
  //   list.add(getProductById(i.toString()));
  // }
  // return list;
}
