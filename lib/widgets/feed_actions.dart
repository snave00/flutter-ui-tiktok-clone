import 'package:flutter/material.dart';

class FeedActions extends StatelessWidget {
  const FeedActions({
    super.key,
    required this.avatarUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  final String avatarUrl;
  final String likes;
  final String comments;
  final String shares;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 21,
            backgroundImage: NetworkImage(avatarUrl),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Icon(
          Icons.favorite,
          size: 35,
        ),
        Text(
          likes,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Icon(
          Icons.chat_bubble_rounded,
          size: 30,
        ),
        Text(
          comments,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Icon(
          Icons.share,
          size: 30,
        ),
        Text(
          shares,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
