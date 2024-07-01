import 'package:flutter/material.dart';
import 'package:advanced_media_picker/advanced_media_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class PhotoPickerWidget extends StatefulWidget {
  final ValueChanged<List<XFile>> onFilesPicked;

  PhotoPickerWidget({required this.onFilesPicked});

  @override
  _PhotoPickerWidgetState createState() => _PhotoPickerWidgetState();
}

class _PhotoPickerWidgetState extends State<PhotoPickerWidget> {
  Completer<void> _primaryCompleter = Completer<void>();
  List<XFile> _selectedFiles = [];

  @override
  void initState() {
    super.initState();
    _primaryCompleter = Completer<void>();
  }

  Future<void> _openMediaPicker(BuildContext context) async {
    try {
      final List<XFile> result = await AdvancedMediaPicker.openPicker(
        context: context,
        style: PickerStyle(),
        cameraStyle: CameraStyle(),
        allowedTypes: PickerAssetType.image,
        maxVideoDuration: 60,
        selectionLimit: 10,
        showCamera: true,
        videoCamera: true,
      );

      if (result != null && result.isNotEmpty) {
        setState(() {
          _selectedFiles = result;
          widget.onFilesPicked(_selectedFiles);
        });
      }

      _primaryCompleter.complete(); // Complete the completer
    } catch (e) {
      print('Error accessing media devices: $e');
      _primaryCompleter.completeError(e); // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (_selectedFiles.isNotEmpty)
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: _selectedFiles.map((file) {
              return Image.file(
                File(file.path),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              );
            }).toList(),
          ),
        ElevatedButton(
          onPressed: () => _openMediaPicker(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.zero,
          ),
          child: SizedBox(
            width: 50,
            height: 50,
            child: Icon(
              Icons.photo,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
