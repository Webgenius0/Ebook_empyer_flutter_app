import 'package:abdilahi/features/home/model/genre_model.dart';

class BookModel {
  final String imageUrl;
  final String title;
  final String author;
  final double rating;
  final double price;
  final List<GenreModel>? genres;

  BookModel({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.rating,
    required this.price,
    this.genres,
  });
}
