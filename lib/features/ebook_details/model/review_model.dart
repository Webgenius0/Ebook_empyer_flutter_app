class Review {
  final String reviewerName;
  final String reviewText;
  final int starRating;
  final int likes;
  final String timeAgo;

  Review({
    required this.reviewerName,
    required this.reviewText,
    required this.starRating,
    required this.likes,
    required this.timeAgo,
  });
}
