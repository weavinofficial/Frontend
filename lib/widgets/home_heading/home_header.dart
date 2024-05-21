import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:frontend/widgets/home_heading/advert.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() {
    return _HomeHeaderState();
  }
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 270,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 270,
          top: -170,
          child: Image.asset('images/homeBackground.png', scale: 0.7),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 165,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25),
                child: SearchAnchor(
                    viewElevation: 0,
                    viewShape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    viewConstraints:
                        const BoxConstraints(maxHeight: 400, maxWidth: 250),
                    viewBackgroundColor:
                        const Color.fromARGB(255, 254, 248, 248),
                    viewSurfaceTintColor: const Color.fromARGB(0, 0, 0, 0),
                    builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        elevation: const MaterialStatePropertyAll(0),
                        controller: controller,
                        constraints:
                            const BoxConstraints(minHeight: 40, maxWidth: 250),
                        textStyle: const MaterialStatePropertyAll(
                            TextStyle(color: Colors.white)),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(249, 224, 224, 1)),
                        surfaceTintColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(0, 0, 0, 0)),
                        overlayColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(249, 224, 224, 1)),
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 5.0)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        hintStyle: const MaterialStatePropertyAll(
                            TextStyle(color: Color.fromRGBO(249, 224, 224, 1))),
                        leading: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      );
                    },
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    }),
              ),
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
              const Advert(),
            ],
          ),
        ),
      ],
    );
  }
}
