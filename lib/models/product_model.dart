class ProductModel {
  final String id;
  final String title;
  final String description;
  final String price;
  final String image;
  final String category;
  final Rating rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.rating,
  });
  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id'].toString(),
      title: json['title'],
      description: json['description'],
      price: json['price'].toString(),
      image: json['image'],
      category: json['category'],
      rating: Rating.fromJson(json['rating']),
    );
  }
}

class Rating {
  final String rate;
  final String count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'].toString(),
      count: json['count'].toString(),
    );
  }
}
