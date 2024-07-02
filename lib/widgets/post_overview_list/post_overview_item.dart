import 'package:flutter/material.dart';
import 'package:frontend/models/post_overview.dart';
import 'package:frontend/pages/post_like_page.dart';
import 'package:frontend/widgets/post_overview_list/category_tag.dart';
import 'package:frontend/widgets/post_overview_list/post_overview_body.dart';
import 'package:frontend/widgets/post_overview_list/post_overview_header.dart';

class PostOverviewItem extends StatelessWidget {
  const PostOverviewItem({super.key, required this.postOverview});

  final PostOverview postOverview;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      elevation: 3,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12))),
      child: InkWell(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12)),
        splashColor: const Color.fromARGB(255, 221, 221, 221),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PostLikePage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PostOverviewHeader(
                        rank: postOverview.rank, title: postOverview.title),
                    const SizedBox(height: 5),
                    PostOverviewBody(description: postOverview.description)
                  ],
                ),
              ),
              CategoryTag(category: postOverview.category)
            ],
          ),
        ),
      ),
    );
  }
}
