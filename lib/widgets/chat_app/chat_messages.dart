import 'package:flutter/material.dart';
import 'package:frontend/widgets/chat_app/message_bubble.dart';

class ChatMessages extends StatefulWidget {
  const ChatMessages({super.key});

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  final sentMessages = ['Yummy', 'Chira go'];

  @override
  Widget build(BuildContext context) {
    if (sentMessages.isEmpty) {
      return const Center(
        child: Text('No messages'),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 40, left: 13, right: 13),
      itemCount: sentMessages.length,
      itemBuilder: (context, index) {
        final chatMessage = sentMessages[index];
        final nextChatMessage =
            index + 1 < sentMessages.length ? sentMessages[index + 1] : null;
        //final currentMessageUserId = chatMessage['userId'];
        //final nextMessageUserId =
        //    nextChatMessage != null ? nextChatMessage['userId'] : null;
        //final nextUserIsSame = nextMessageUserId == currentMessageUserId;
        const nextUserIsSame = true;

        if (nextUserIsSame) {
          return MessageBubble.next(message: chatMessage, isMe: true);
        }
        /*else {
          return MessageBubble.first(userImage: userImage, username: username, message: message, isMe: isMe)
        }*/
      },
    );
  }
}
