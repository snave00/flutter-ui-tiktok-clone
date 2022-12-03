import 'package:flutter/material.dart';
import 'package:tiktok_clone/widgets/feed_actions.dart';
import 'package:tiktok_clone/widgets/video_player.dart';

class Feed extends StatelessWidget {
  const Feed({
    super.key,
    required this.username,
    required this.description,
    required this.avatarUrl,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.videoUrl,
  });

  final String username;
  final String description;
  final String avatarUrl;
  final String likes;
  final String comments;
  final String shares;
  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyVideoPlayer(videoUrl: videoUrl),
        Container(
          padding: const EdgeInsets.only(right: 10),
          alignment: const Alignment(1, 1),
          child: FeedActions(
            avatarUrl: avatarUrl,
            likes: likes,
            comments: comments,
            shares: shares,
          ),
        ),
        Container(
          alignment: const Alignment(-1, 1),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        )
      ],
    );
  }
}
