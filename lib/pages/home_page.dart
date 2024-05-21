import 'package:flutter/material.dart';
import 'package:frontend/models/post_overview.dart';
import 'package:frontend/widgets/home_heading/home_header.dart';
import 'package:frontend/widgets/navigation_bar.dart';
import 'package:frontend/widgets/post_overviews.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeHeader(),
        PostOverviews(trendingPostOverviews: [
          PostOverview(
              id: 1,
              title: 'Hellasdfasfasfadsfdsafdsfasdfadsfadsfso',
              description:
                  'CS2040S adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
              category: Category.daily,
              rank: 1),
          PostOverview(
              id: 1,
              title: 'Hello',
              description:
                  'CS2040S hard hard adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
              category: Category.humor,
              rank: 1),
          PostOverview(
              id: 1,
              title: 'Hello',
              description:
                  'CS2040S is hard adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
              category: Category.tips,
              rank: 1),
        ], forYouPostOverviews: [
          PostOverview(
              id: 1,
              title: 'Hellasdfasfasfadsfdsafdsfasdfadsfadsfso',
              description:
                  'CS2040S adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
              category: Category.daily,
              rank: 1),
          PostOverview(
              id: 1,
              title: 'Hello',
              description:
                  'CS2040S hard hard adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
              category: Category.humor,
              rank: 1),
          PostOverview(
              id: 1,
              title: 'Hello',
              description:
                  'CS2040S is hard adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
              category: Category.tips,
              rank: 1),
        ]),
      ],
    );
  }
}
