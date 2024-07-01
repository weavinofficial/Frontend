import 'package:flutter/material.dart';
import 'package:frontend/widgets/chat_app/chat_messages.dart';
import 'package:frontend/widgets/chat_app/new_messages.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0xFFE79796), Color(0xFFF5CEC7)],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(children: [
              //padding at the top
              const SizedBox(height: 15),
              Row(children: [
                //padding before back button
                const SizedBox(width: 17),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                //padding after back button
                const SizedBox(width: 12),
                Container(
                  width: 55,
                  height: 55,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 18),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    'Luke Shim',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w900,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    isOnline ? 'Online' : 'Offline',
                    style: const TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ]),
              ]),
              //padding below 'Online'
              const SizedBox(height: 12),
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.75),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 13),
                      Text(
                        'Today',
                        style: TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 35),
                      Expanded(child: ChatMessages()),
                      NewMessage(),
                    ],
                  ),
                ),
              )
            ]),
          ),
        );
      }),
    );
  }
}
