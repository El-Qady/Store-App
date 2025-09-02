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
      rating: json['rating'] != null
          ? Rating.fromJson(json['rating'])
          : Rating(rate: '0', count: '0'),
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

  factory Rating.fromJson(json) {
    return Rating(
      rate: json['rate'].toString(),
      count: json['count'].toString(),
    );
  }
}
