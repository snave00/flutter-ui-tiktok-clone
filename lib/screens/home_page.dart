import 'package:flutter/material.dart';
import 'package:tiktok_clone/widgets/feed.dart';
import '../data/feed_data.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: feed.length,
        controller: _pageViewController,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Feed(
            username: feed[index].username,
            description: feed[index].description,
            avatarUrl: feed[index].avatar,
            likes: feed[index].likes,
            comments: feed[index].comments,
            shares: feed[index].shares,
            videoUrl: feed[index].videoUrl,
          );
        },
      ),
    );
  }
}
