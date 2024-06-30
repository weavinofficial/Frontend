import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PhotoPicker extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(BuildContext context, ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      Navigator.of(context).pop(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 207, 124, 123),
            Color.fromARGB(255, 255, 175, 175), // Adjust as needed for the gradient effect
          ],
        ),
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      
      child: Column(
        children: <Widget>[
          Container(
            height: 98,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white)),
            ),
            child: ListTile(
              leading: Icon(Icons.camera_alt, color: Colors.white),
              title: Text(
                'Take a Photo',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => _pickImage(context, ImageSource.camera),
            ),
          ),
          Container(
            height: 98,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white)),
            ),
            child: ListTile(
              leading: Icon(Icons.photo_library, color: Colors.white),
              title: Text(
                'Choose from Gallery',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => _pickImage(context, ImageSource.gallery),
            ),
          ),
        ],
      ),
    );
  }
}