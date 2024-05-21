import 'package:flutter/material.dart';

class PostOverviewBody extends StatelessWidget {
  const PostOverviewBody({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 30,
      child: Text(
        description,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: const TextStyle(
            fontSize: 10,
            fontFamily: 'GmarketSans',
            color: Color.fromRGBO(114, 114, 114, 1)),
      ),
    );
  }
}
