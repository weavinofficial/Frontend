import 'package:flutter/material.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/widgets/data_search.dart';

import 'package:frontend/widgets/home_heading/advert.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0021600, size.height * -0.0037202);
    path_0.lineTo(size.width * -0.0055200, size.height * 0.8238690);
    path_0.quadraticBezierTo(size.width * 0.1089000, size.height * 0.9314881,
        size.width * 0.3004000, size.height * 0.9335417);
    path_0.cubicTo(
        size.width * 0.4727200,
        size.height * 0.9305952,
        size.width * 0.5402400,
        size.height * 0.8308036,
        size.width * 0.6773400,
        size.height * 0.8320536);
    path_0.quadraticBezierTo(size.width * 0.8336600, size.height * 0.8343155,
        size.width * 1.0029200, size.height * 0.9999107);
    path_0.lineTo(size.width * 1.0075200, size.height * -0.0063095);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key, required isAdverse});

  @override
  State<HomeHeader> createState() {
    return _HomeHeaderState();
  }
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ClipPath(
            clipper: WaveClipper(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(250, 243, 193, 184),
                    Color.fromARGB(230, 239, 175, 164),
                  ],
                ),
              ),
              height: isAdverse ? 260 : 180,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 25),
                        child: SearchBar(
                          elevation: const WidgetStatePropertyAll(0),
                          constraints: const BoxConstraints(
                              minHeight: 35, maxWidth: 230),
                          backgroundColor: const WidgetStatePropertyAll(
                              Color.fromRGBO(249, 224, 224, 1)),
                          surfaceTintColor: const WidgetStatePropertyAll(
                              Color.fromRGBO(0, 0, 0, 0)),
                          overlayColor: const WidgetStatePropertyAll(
                              Color.fromRGBO(249, 224, 224, 1)),
                          onTap: () {
                            showSearch(
                              context: context,
                              delegate: DataSearch(),
                            );
                          },
                          // onChanged: (_) {},
                          hintText: 'Search',
                          hintStyle: const WidgetStatePropertyAll(
                            TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'GmarketSans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          leading: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 330,
                  child: Text(
                    "17th June, 2024",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                ),
                const SizedBox(
                  width: 330,
                  child: Text(
                    "Hello, Jonathan!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                isAdverse ? const Advert() : const SizedBox(),
              ]),
            ),
          );
        },
      ),
    );
  }
}
