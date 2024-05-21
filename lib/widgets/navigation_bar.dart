import 'package:flutter/material.dart';

const Color bottonNavBgColor = Color(0x00ffc38a);
const icons = [
  Icons.home,
  Icons.edit_document,
  Icons.add,
  Icons.email,
  Icons.person
];

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.only(left: 30, right: 30),
      width: 400,
      height: 56, //TODO: In Future remove the height
      decoration: BoxDecoration(
        color: bottonNavBgColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: bottonNavBgColor.withOpacity(0.3),
            offset: const Offset(0, 20),
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            5,
            (index) => IconButton(
                  onPressed: () => {},
                  icon: Icon(icons[index]),
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                )),
      ),
    );
  }
}
