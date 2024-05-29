import 'package:flutter/material.dart';
import 'package:frontend/models/post_overview.dart';
import 'package:frontend/widgets/post_overview_list/post_overview_item.dart';

enum PostOverviewListType { trending, foryou }

class PostOverviewList extends StatelessWidget {
  const PostOverviewList(
      {super.key,
      required this.postOverviews,
      required this.postOverviewListType});

  final List<PostOverview> postOverviews;
  final PostOverviewListType postOverviewListType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Text(formatPostOverviewListType(postOverviewListType),
                        style: const TextStyle(
                            fontFamily: 'GmarketSans',
                            fontSize: 18,
                            color: Color.fromRGBO(231, 151, 150, 1),
                            fontWeight: FontWeight.w800)),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'More',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(151, 151, 151, 1),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 340,
            height: 280,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (ctx, index) =>
                  PostOverviewItem(postOverview: postOverviews[index]),
            ),
          ),
        ],
      ),
    );
  }

  String formatPostOverviewListType(PostOverviewListType type) {
    switch (type) {
      case PostOverviewListType.trending:
        return 'Now Trending';
      case PostOverviewListType.foryou:
        return 'For You';
      default:
        return 'Default';
    }
  }
}
