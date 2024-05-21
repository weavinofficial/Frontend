import 'package:flutter/material.dart';

class PostOverviewHeader extends StatelessWidget {
  const PostOverviewHeader(
      {super.key, required this.rank, required this.title});

  final int rank;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          rank.toString(),
          style: const TextStyle(
              fontSize: 14,
              fontFamily: 'GmarketSans',
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(231, 151, 150, 1)),
        ),
        const SizedBox(width: 10),
        const Text(
          "|",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(245, 206, 199, 1)),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 130,
          child: Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'GmarketSans',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(231, 151, 150, 1))),
        )
      ],
    );
  }
}
