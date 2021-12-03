class Product {
  final String productDescription;
  final double price;
  final List<Map> nutritionalValue;
  final String productName;
  final String customerName;
  final String reviewHeading;
  final String review;
  final DateTime date;
  final String id;
  int itemCount;

  Product(
      {this.itemCount = 1,
      required this.productDescription,
      required this.price,
      required this.nutritionalValue,
      required this.productName,
      required this.customerName,
      required this.reviewHeading,
      required this.review,
      required this.date,
      required this.id});

  factory Product.fromJson(Map json) {
    print(json);
    return Product(
        productDescription: json['productdescription'],
        price:double.tryParse(json['price'].toString()) ?? 0.0,
        nutritionalValue: json['nutitionalvalue'] != null
            ? List<Map>.from(json['nutitionalvalue'])
            : [],
        productName: json['productname'],
        customerName: json['customername'],
        reviewHeading: json['reviewheading'],
        review: json['review'],
        date: json['date'].toDate(),
        id: json['id']);
  }

  toJson() {
    return {
      "productdescription": productDescription,
      "price": price,
      "nutritionalvalue": nutritionalValue,
      "productname": productName,
      "customername": customerName,
      "reviewneading": reviewHeading,
      "review": review,
      "date": date,
      "id": id,
    };
  }
}
