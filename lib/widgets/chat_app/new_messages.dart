import 'package:advanced_media_picker/advanced_media_picker.dart';
import 'package:flutter/material.dart';
import 'package:frontend/widgets/advanced_media_picker.dart';
import 'dart:io';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return _NewMessageState();
  }
}

class _NewMessageState extends State<NewMessage> {
  File? _imageFile;
  List<XFile> _selectedFiles = [];

  void _onFilesPicked(List<XFile> files) {
    setState(() {
      _selectedFiles = files;
    });
  }

  void _openPhotoPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: PhotoPickerWidget(onFilesPicked: _onFilesPicked),
        );
      },
    );
  }

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
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: ShapeDecoration(
        color: const Color(0xFFE9EAEE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 1, bottom: 0, top: 0),
        child: Row(children: [
          Expanded(
            child: TextFormField(
              style: const TextStyle(fontSize: 16),
              controller: _messageController,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(bottom: 18),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: IconButton(
                  onPressed: () => _openPhotoPicker(context),
                  icon: const Icon(Icons.add),
                ),
                prefixIconColor: const Color.fromRGBO(255, 201, 139, 1),
                labelText: 'Send a message',
                labelStyle: const TextStyle(fontSize: 15, height: 0),
              ),
              textCapitalization: TextCapitalization.none,
            ),
          ),
          SizedBox(
            width: 45,
            height: 45,
            child: IconButton(
              padding: const EdgeInsets.all(11),
              icon: Image.asset('assets/images/Share.png'),
              onPressed: _submitMessage,
            ),
          ),
          const SizedBox(width: 14),
        ]),
      ),
    );
  }
}
