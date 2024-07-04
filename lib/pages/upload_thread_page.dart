import 'package:flutter/material.dart';
import 'package:frontend/widgets/advanced_media_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:advanced_media_picker/advanced_media_picker.dart';
import 'package:frontend/widgets/file_attach_button.dart';



class UploadThreadPage extends StatefulWidget {
  const UploadThreadPage({super.key});

  @override
  State<UploadThreadPage> createState() {
    return _UploadThreadPageState();
  }
}

class _UploadThreadPageState extends State<UploadThreadPage> {
  final TextEditingController _controller = TextEditingController();
  TextStyle get _currentTextStyle {
    return TextStyle(
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: Color(0xFF727272),
      fontSize: 15,
      fontFamily: 'Noto Sans',
    );
  }
  bool isChecked = false;
  bool isBold = false;
  // List of button states
  List<bool> buttonStates = List.filled(15, false);

  // List of button labels
  final List<String> buttonLabels = [
    'General',
    'Humor',
    'Issue',
    'Daily',
    'Comp',
    'Others',
    'CDE',
    'CHS',
    'Tips',
    'Medicine',
    'Music',
    'Pharm',
    'Law',
    'Dentistry',
    'Business'
  ];


  Widget _buildButton(int index, BoxConstraints constraints) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            buttonStates[index] = !buttonStates[index];
          });
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 4.0),
          // Add some spacing between buttons
          width: constraints.maxWidth * 60 / 393,
          height: constraints.maxWidth * 24 / 393,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: buttonStates[index] ? Colors.black : Colors.white,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                buttonLabels[index],
                style: TextStyle(
                  color: buttonStates[index] ? Colors.black : Colors.white,
                  fontSize: 12,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  List<XFile> _selectedFiles = [];

  void _onFilesPicked(List<XFile> files) {
    setState(() {
      _selectedFiles = files;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Material(
        child: LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [


          Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Color(0xFFF5CEC7), Color(0xFFE79796)],
                ),

              ),

              //Hashtags
              child: SingleChildScrollView(child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight( child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 150 / 852),

          Row(children: [
                  SizedBox(width: constraints.maxWidth * 28 / 393),

                  //General tag
                  _buildButton(0, constraints),

                  SizedBox(width: constraints.maxWidth * 9 / 393),

                  //Humor tag
                  _buildButton(1, constraints),

                  SizedBox(width: constraints.maxWidth * 9 / 393),

                  //Issue tag
                  _buildButton(2, constraints),

                  SizedBox(width: constraints.maxWidth * 9 / 393),

                  //Daily tag
                  _buildButton(3, constraints),

                  SizedBox(width: constraints.maxWidth * 9 / 393),

                  //tips tag
                  _buildButton(4, constraints),]),

          SizedBox(height: constraints.maxHeight * 4 / 852),

          Row(children: [
                SizedBox(width: constraints.maxWidth * 60 / 393),

                //Business tag
                _buildButton(6, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),
                //CDE tag
                _buildButton(7, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),
                //CHS tag
                _buildButton(9, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),
                //Computing tag
                _buildButton(10, constraints),]),

          SizedBox(height: constraints.maxHeight * 4 / 852),

          Row(children: [

                SizedBox(width: constraints.maxWidth * 28 / 393),
                //Medicine tag
                _buildButton(11, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),

                //Music tag
                _buildButton(12, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),

                //Pharmacy tag
                _buildButton(13, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),

                //Law tag
                _buildButton(14, constraints),

                SizedBox(width: constraints.maxWidth * 9 / 393),

                //Others tag
                _buildButton(5, constraints),]),

                  const SizedBox(height: 15),

                  //Writing title part
                  SizedBox(
                    width: 297,
                    height: 43,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 54,
                          height: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: const ShapeDecoration(
                            color: Color(0xFFFFC98B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w700,
                                    height:
                                    1.0, // Adjust this value as necessary
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Title',
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    border: InputBorder.none,
                                    isDense:
                                    true, // Added this to adjust height
                                    contentPadding: EdgeInsets
                                        .zero, // Adjust this as necessary
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Writing title text filed
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 43,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0.75),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 219,
                                child: TextField(
                                  style: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 17,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w600,
                                    height:
                                    1.0, // Adjust this value as necessary
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Type',
                                    hintStyle: TextStyle(
                                      color: Color(0xFF727272),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal
                                    ),
                                    border: InputBorder.none,
                                    isDense:
                                    true, // Added this to adjust height
                                    contentPadding: EdgeInsets
                                        .zero, // Adjust this as necessary
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: constraints.maxHeight * 20 / 852),

                  //Writing post body frame and shape
                  SizedBox(
                    width: constraints.maxWidth * 0.85,
                    height: constraints.maxHeight * 410 / 852,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.85,
                                height: constraints.maxHeight * 410 / 852,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: constraints.maxWidth * 0.85,
                                        height: constraints.maxHeight * 410 / 852,
                                        decoration: ShapeDecoration(
                                          color: Colors.white.withOpacity(0.75),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: constraints.maxWidth * 0.85,
                                        height: 50,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFFFFC98B),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),

                        //Buttons
                        Column(
                          children: [
                            // const SizedBox(height: ),
                            Row(
                              children: [
                                const SizedBox(width: 15),


                                //Photo attaching button
                                SizedBox(
                                  width: 30,
                                  child: PhotoPickerWidget(onFilesPicked: _onFilesPicked),
                                ),

                                const SizedBox(width: 10),

                                //Button for attaching files
                                SizedBox(
                                    width: 30,
                                    child: FilePickerWidget()),

                                const SizedBox(width: 10),

                                //Button for anonymous checking
                                SizedBox(
                                  width: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [


                                    ],
                                  ),



                                )
                              ],
                            ),

                            const SizedBox(height: 15),

                            //Text field for body of the post
                            SizedBox(
                              height: constraints.maxHeight * 300 / 852,
                              width: constraints.maxWidth * 0.75,
                              child: TextField(
                                controller: _controller,
                                style: _currentTextStyle,
                                keyboardType: TextInputType.multiline,
                                maxLines: null, // Allow multiple lines
                                // Allow text to wrap to next line
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  isDense: true,
                                  hintText: 'Type',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 15,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.normal,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),




                ],
              )
          )
              )
              )
          ),
          Positioned(
            top: 20,
            child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child : Image.asset("assets/images/upload_thread_page_image.png"))
          )
          ,
          // Post button


          Positioned(
              top: constraints.maxWidth  * 1.7,
              left: constraints.maxWidth * 0.37,

              child: TextButton(
            onPressed: () {
              // Handle "Post" button press
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFFF5CEC7), // Background color
              padding: const EdgeInsets.symmetric(
                  horizontal: 14, vertical: 8), // Padding
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 1, color: Colors.transparent), // Border
                borderRadius: BorderRadius.circular(40), // BorderRadius
              ),
            ),
            child: const Text(
              'Post',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          )),
        ]
      );
        }))
    ;}}





