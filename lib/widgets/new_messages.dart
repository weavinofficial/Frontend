import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return _NewMessageState();
  }
}

class _NewMessageState extends State<NewMessage> {
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _submitMessage() {
    final enteredMessage = _messageController.text;

    if (enteredMessage.trim().isEmpty) {
      return;
    }

    //send to backend

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(shape: CircleBorder()),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
        child: Row(children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(labelText: 'Send a message'),
              textCapitalization: TextCapitalization.none,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            //icon: Image.asset('assets/images/share.svg'),
            onPressed: _submitMessage,
          ),
        ]),
      ),
    );
  }
}
