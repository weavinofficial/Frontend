import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/community_page.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/message_list.dart';
import 'package:frontend/pages/my_page.dart';
import 'package:frontend/pages/upload_thread_page.dart';

const Color bottonNavBgColor = Color(0x00ffc38a);

var icons = [
  Image.asset(
    'assets/images/Home_IconButton.png',
    width: 30,
  ),
  Image.asset(
    'assets/images/News_IconButton.png',
    width: 35,
  ),
  Image.asset(
    'assets/images/Add_IconButton.png',
    width: 50,
  ),
  Image.asset(
    'assets/images/Message_IconButton.png',
    width: 30,
  ),
  Image.asset(
    'assets/images/Profile_IconButton.png',
    width: 20,
  ),
];

var pages = [
  const HomePage(),
  const CommunityPage(),
  const UploadThreadPage(),
  const MessageList(),
  const MyPage(),
];

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomNavigationBar(
      {super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SizedBox(
        height: 100,
        width: 350,
        child: Stack(children: [
          Positioned(
            top: 40,
            child: SizedBox(
              height: 56,
              child: Container(
                padding: const EdgeInsets.only(left: 25, right: 30),
                width: 350,
                decoration: BoxDecoration(
                  color: bottonNavBgColor.withOpacity(1),
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                      color: bottonNavBgColor.withOpacity(0.3),
                      offset: const Offset(0, 20),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5,
                        (index) => index == 2
                            ? SizedBox(
                                width: 50,
                                child: Container(),
                              )
                            : IconButton(
                                icon: icons[index],
                                onPressed: () => onItemTapped(index),
                                style: ButtonStyle(
                                    iconColor: selectedIndex == index
                                        ? const WidgetStatePropertyAll(
                                            Colors.white)
                                        : const WidgetStatePropertyAll(
                                            Colors.grey)),
                              ),
                      ),
                    ),
                    Positioned(
                      top: -35,
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 148,
            top: 20,
            child: FloatingActionButton(
              backgroundColor: bottonNavBgColor.withOpacity(1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () => onItemTapped(2),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
