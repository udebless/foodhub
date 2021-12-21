import 'package:foodhub/food_hub/services/product_service.dart';

class Review {
  final String customerName;
  final String reviewHeading;
  final String reviewText;
  final String rating;
  final String customerImage;
   final DateTime date;

  Review(
      {required this.customerName,
      this.reviewHeading ='',
      required this.reviewText,
      required this.rating,
     required this.date,
      required this.customerImage});

  factory Review.fromJson(Map json) {
    return Review(
        reviewHeading: json['reviewheading'] ?? '',
        customerName: json['customername'],
        reviewText: json['reviewtext'],
        customerImage: json['customerimage'],
        date: json['date']?.toDate(),
        rating: json['rating']);
        
  }
  toJson() {
    return {
      'reviewheading': reviewHeading,
      'customername': customerName,
      'reviewtext': reviewText,
      'customerimage': customerImage,
      'rating': rating,
      'date':  date,
    };
  }

 
}
