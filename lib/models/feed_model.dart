class FeedModel {
  final int id;
  final String username;
  final String description;
  final String videoUrl;
  final String avatar;
  final String likes;
  final String comments;
  final String saves;
  final String shares;

  FeedModel({
    required this.id,
    required this.username,
    required this.description,
    required this.videoUrl,
    required this.avatar,
    required this.likes,
    required this.comments,
    required this.saves,
    required this.shares,
  });
}
