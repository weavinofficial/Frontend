import 'package:flutter/material.dart';
import 'package:frontend/widgets/chat_messages.dart';
import 'package:frontend/widgets/new_messages.dart';

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
              const SizedBox(height: 16),
              Row(children: [
                //padding before back button
                const SizedBox(width: 22),
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
                  width: 60,
                  height: 60,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(width: 22),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    'Anonymous Duck',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w900,
                      height: 2,
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
              const SizedBox(height: 16),
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
