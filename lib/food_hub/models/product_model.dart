class Product {
  final String productDescription;
  final double price;
  final List<String> nutritionalValue;
  final String productName;
  final String customerName;
  final String reviewHeading;
  final String review;
  final DateTime date;
  final String id;

  Product( 
      {required this.productDescription,
      required this.price,
      required this.nutritionalValue,
      required this.productName,
      required this.customerName,
      required this.reviewHeading,
      required this.review,
      required this.date, required this.id});
}
