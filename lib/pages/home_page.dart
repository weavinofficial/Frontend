import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/models/post_overview.dart';
import 'package:frontend/widgets/home_heading/home_header.dart';
import 'package:frontend/widgets/navigation_bar.dart';
import 'package:frontend/widgets/post_overviews.dart';

bool isAdverse = true;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(children: [
        Positioned.fill(
          top: isAdverse ? 170 : 90,
          child: const Column(
            children: [
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
                    title: 'geggegegeg',
                    description:
                        'CS2040S is hard adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
                    category: Category.tips,
                    rank: 1),
                PostOverview(
                    id: 1,
                    title: 'geggegegeg',
                    description:
                        'CS2040S is hard adsfadsfdsafdasfsadfdsfasdfassdfsafsadfsafadsfadsfadsfasfdsf',
                    category: Category.tips,
                    rank: 1),
              ]),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
        SizedBox(
            child: HomeHeader(
          isAdverse: isAdverse,
        )),
        const Positioned(
          child: Align(
              alignment: Alignment.bottomCenter, child: CustomNavigationBar()),
        )
      ]),
    );
  }
}
