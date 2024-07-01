import 'package:flutter/material.dart';
import 'package:frontend/models/post_overview.dart';
import 'package:frontend/widgets/post_overview_list/post_overview_list.dart';

class PostOverviews extends StatelessWidget {
  const PostOverviews(
      {super.key,
      required this.trendingPostOverviews,
      required this.forYouPostOverviews});

  final List<PostOverview> trendingPostOverviews;
  final List<PostOverview> forYouPostOverviews;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            PostOverviewList(
                postOverviews: trendingPostOverviews,
                postOverviewListType: PostOverviewListType.trending),
            PostOverviewList(
                postOverviews: forYouPostOverviews,
                postOverviewListType: PostOverviewListType.foryou)
          ],
        ),
      ),
    );
  }
}
