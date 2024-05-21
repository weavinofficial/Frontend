import 'package:flutter/material.dart';

class upload_thread_page extends StatefulWidget {
  const upload_thread_page({super.key});
  @override
  _uploadThreadPageState createState() => _uploadThreadPageState();
}

class _uploadThreadPageState extends State<upload_thread_page> {
  bool isGeneral = false;
  bool isHumor = false;
  bool isIssue = false;
  bool isDaily = false;
  bool isTips = false;
  bool isBusiness = false;
  bool isCDE = false;
  bool isCHS = false;
  bool isComputing = false;
  bool isMedicine = false;
  bool isMusic = false;
  bool isParmacy = false;
  bool isLaw = false;
  bool isOthers = false;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.81, -0.59),
                  end: Alignment(-0.81, 0.59),
                  colors: [Color(0xFFF5CEC7), Color(0xFFE79796)],
                ),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/upload_thread_page_image.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft),
              ),

              //Hashtags
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 200 / 852),
                  Row(children: [
                    SizedBox(width: constraints.maxWidth * 22 / 393),

                    //General tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isGeneral = !isGeneral;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color:
                                      isGeneral ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'General',
                                style: TextStyle(
                                  color:
                                      isGeneral ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Humor tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHumor = !isHumor;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isHumor ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Humor',
                                style: TextStyle(
                                  color: isHumor ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Issue tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isIssue = !isIssue;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isIssue ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Issue',
                                style: TextStyle(
                                  color: isIssue ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Daily tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isDaily = !isDaily;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isDaily ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Daily',
                                style: TextStyle(
                                  color: isDaily ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //tips tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isTips = !isTips;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 50 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isTips ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tips',
                                style: TextStyle(
                                  color: isTips ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),

                  SizedBox(height: constraints.maxHeight * 4 / 852),

                  Row(children: [
                    SizedBox(width: constraints.maxWidth * 50 / 393),

                    //Business tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isBusiness = !isBusiness;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color:
                                      isBusiness ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Business',
                                style: TextStyle(
                                  color:
                                      isBusiness ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),
                    //CDE tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isCDE = !isCDE;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isCDE ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'CDE',
                                style: TextStyle(
                                  color: isCDE ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),
                    //CHS tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isCHS = !isCHS;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isCHS ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'CHS',
                                style: TextStyle(
                                  color: isCHS ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),
                    //Computing tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isComputing = !isComputing;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 65 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isComputing
                                      ? Colors.black
                                      : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Computing',
                                style: TextStyle(
                                  color:
                                      isComputing ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),

                  SizedBox(height: constraints.maxHeight * 4 / 852),

                  //Medicine tag
                  Row(children: [
                    SizedBox(width: constraints.maxWidth * 22 / 393),
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMedicine = !isMedicine;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color:
                                      isMedicine ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Medicine',
                                style: TextStyle(
                                  color:
                                      isMedicine ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Music tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMusic = !isMusic;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isMusic ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Music',
                                style: TextStyle(
                                  color: isMusic ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Pharmacy tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isParmacy = !isParmacy;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color:
                                      isParmacy ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Pharmacy',
                                style: TextStyle(
                                  color:
                                      isParmacy ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Law tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isLaw = !isLaw;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 63 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: isLaw ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Law',
                                style: TextStyle(
                                  color: isLaw ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: constraints.maxWidth * 11 / 393),

                    //Others tag
                    Material(
                      color: Colors.transparent, // Transparent background
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isOthers = !isOthers;
                          });
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: constraints.maxWidth * 50 / 393,
                          height: constraints.maxWidth * 24 / 393,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color:
                                      isOthers ? Colors.black : Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Others',
                                style: TextStyle(
                                  color: isOthers ? Colors.black : Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Ensure proper text alignment
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),

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

                  SizedBox(height: constraints.maxHeight * 35 / 852),

                  //Writing post body frame and shape
                  SizedBox(
                    width: 297,
                    height: 190,
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
                                width: 297,
                                height: 190,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 297,
                                        height: 190,
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
                                        width: 297,
                                        height: 45,
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
                            const SizedBox(height: 7),
                            Row(
                              children: [
                                const SizedBox(width: 25),

                                //Bold button
                                SizedBox(
                                    width: 25,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: const Text(
                                        'B',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    )),

                                const SizedBox(width: 10),

                                //Italic button
                                SizedBox(
                                    width: 25,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 20, // Adjust width as needed
                                        height: 20, // Adjust height as needed
                                        decoration: const BoxDecoration(
                                          color: Colors
                                              .transparent, // Background color
                                        ),
                                        child: const Text(
                                          'i',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    )),

                                const SizedBox(width: 10),

                                //Underline button
                                SizedBox(
                                    width: 25,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: const Text(
                                        'U',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.underline,
                                          height: 0,
                                        ),
                                      ),
                                    )),

                                const SizedBox(width: 10),

                                //Capitalization button
                                SizedBox(
                                    width: 25,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: const Text(
                                        'Aa',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Noto Sans',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    )),

                                const SizedBox(width: 10),

                                //Photo attaching button
                                SizedBox(
                                    width: 25,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: SizedBox(
                                        width: 16,
                                        height: 16,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 16,
                                                height: 16,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1.50,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6.40,
                                              top: 3.20,
                                              child: Transform.rotate(
                                                angle: 3.14,
                                                child: Container(
                                                  width: 3.20,
                                                  height: 3.20,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 1.50,
                                                      color: Colors.white,
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),

                                const SizedBox(width: 10),

                                //Video attaching button
                                SizedBox(
                                    width: 30,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: const SizedBox(
                                        width: 20,
                                        child: Icon(
                                          Icons
                                              .video_call, // You can replace this with the desired video upload icon
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),

                                const SizedBox(width: 10),

                                //Button for attaching files
                                SizedBox(
                                    width: 30,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: const SizedBox(
                                        width: 20,
                                        child: Icon(
                                          Icons.attach_file,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                              ],
                            ),

                            const SizedBox(height: 15),

                            //Text field for body of the post
                            const SizedBox(
                              height: 110,
                              width: 243,
                              child: TextField(
                                style: TextStyle(
                                  color: Color(0xFF727272),
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.multiline,
                                maxLines: null, // Allow multiple lines
                                // Allow text to wrap to next line
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  isDense: true,
                                  hintText: 'Type',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 12,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            //anonymous checkbox
                            Row(
                              children: [
                                const SizedBox(width: 200),
                                const Text(
                                  'Anonymous?',
                                  style: TextStyle(
                                    color: Color(0xFF727272),
                                    fontSize: 12,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked =
                                          !isChecked; // Toggle the state
                                    });
                                  },
                                  child: Container(
                                    width: 14,
                                    height: 14,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFE79796)),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                    ),
                                    child: isChecked
                                        ? const Icon(
                                            Icons.check,
                                            color: Color(0xFFE79796),
                                            size: 14,
                                          ) // Show checkmark if checked
                                        : null,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  //Post button
                  TextButton(
                    onPressed: () {
                      // Handle "Post" button press
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.transparent, // Background color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8), // Padding
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Colors.white), // Border
                        borderRadius: BorderRadius.circular(20), // BorderRadius
                      ),
                    ),
                    child: const Text(
                      'Post',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ))
        ],
      );
    }));
  }
}
