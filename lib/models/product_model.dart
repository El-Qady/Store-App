class ProuductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProuductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating
      });

  factory ProuductModel.fromJson(Json) {
    return ProuductModel(
      id: Json['id'],
      title: Json['title'],
      price: Json['price'],
      description: Json['description'],
      category: Json['category'],
      image: Json['image'],
      rating: RatingModel.fromJson(Json['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(Json) {
    return RatingModel(rate: Json['rate'], count: Json['count']);
  }
}
