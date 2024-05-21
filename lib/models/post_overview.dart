enum Category { humor, daily, tips }

class PostOverview {
  const PostOverview({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.rank,
  });

  final int id;
  final String title;
  final String description;
  final Category category;
  final int rank;
}
