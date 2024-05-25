import "package:flutter/material.dart";
import 'package:frontend/models/faculty_list.dart';
import 'package:frontend/pages/account_created_page.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

//CustomClipper. Go to https://shapemaker.web.app/ to create a custom waveform
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    Path path_0 = Path();
    path_0.moveTo(0, size.height * -0.0035714);
    path_0.lineTo(size.width * -0.0018800, size.height * 0.9315714);
    path_0.quadraticBezierTo(size.width * 0.2710800, size.height * 0.7430714,
        size.width * 0.4954600, size.height * 0.9143571);
    path_0.quadraticBezierTo(size.width * 0.7741200, size.height * 1.1194643,
        size.width * 1.0077800, size.height * 0.5675000);
    path_0.lineTo(size.width * 1.0060000, size.height * -0.0071429);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class SnappingList extends StatefulWidget {
  final double maxHeight;
  final double maxWidth;

  const SnappingList(this.maxHeight, this.maxWidth, {super.key});

  @override
  State<SnappingList> createState() => _SnappingListState();
}

class _SnappingListState extends State<SnappingList> {
  List<Faculty> facultyList = [
    Faculty("Business", 29, const Color(0xFFE79796), const Color(0xFFFFB284)),
    Faculty("CHS", 35, const Color(0xFFFFB284), const Color(0xFFF5CEC7)),
    Faculty("CDE", 35, const Color(0xFFE79796), const Color(0xFFC6C09C)),
    Faculty("Computing", 27, const Color(0xFFC6C09C), const Color(0xFFF5CEC7)),
    Faculty("Medicine", 29, const Color(0xFFFFB284), const Color(0xFFC6C09C)),
    Faculty("Music", 32, const Color(0xFFE79796), const Color(0xFFFFC98B)),
    Faculty("Dentistry", 29, const Color(0xFFFFB284), const Color(0xFFF5CEC7)),
    Faculty("Law", 35, const Color(0xFFC6C09C), const Color(0xFFFFC98B)),
    Faculty("Pharmacy", 29, const Color(0xFFFFC98B), const Color(0xFFE79796)),
  ];

  @override
  Widget build(BuildContext context) {
    final maxWidth = widget.maxWidth;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: 260,
        child: ScrollSnapList(
          curve: Curves.decelerate,
          itemBuilder: _buildListItem,
          itemCount: facultyList.length,
          itemSize: maxWidth * 0.57,
          onItemFocus: (index) {},
          dynamicItemSize: true,
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    final maxWidth = widget.maxWidth;
    Faculty faculty = facultyList[index];
    return SizedBox(
      width: maxWidth * 0.57,
      height: maxWidth * 0.57,
      child: Card(
        shape: const CircleBorder(),
        elevation: 12,
        color: Colors.transparent,
        child: Container(
          decoration: ShapeDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 0.4,
              colors: [faculty.startGradient, faculty.endGradient],
            ),
            shape: const CircleBorder(),
          ),
          child: Center(
            child: Text(
              faculty.facultyName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: faculty.fontSize,
                fontFamily: "GmarketSans",
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FacultyPage extends StatelessWidget {
  const FacultyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(240, 243, 193, 184),
                    Colors.white,
                    //Color.fromARGB(255, 231, 151, 150),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      color: Colors.white,
                      // whitespace takes 1/3 of the height
                      height: constraints.maxHeight * 0.36,
                      //main column
                      child: Column(
                        children: [
                          //padding above iconbutton
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              //padding before iconbutton
                              const SizedBox(width: 12),
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Color.fromARGB(255, 231, 151, 150),
                                ),
                              ),
                            ],
                          ),
                          //padding above title
                          SizedBox(
                            height: constraints.maxHeight * 0.06,
                          ),
                          Text(
                            "Choose Your\nFaculty!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "GmarketSans",
                              fontWeight: FontWeight.bold,
                              fontSize: constraints.maxHeight * 0.05,
                              height: 0,
                              color: const Color(0xFFE79796),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 280,
                    child: SnappingList(
                        constraints.maxHeight, constraints.maxWidth),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.07),

                  // Next Button
                  SizedBox(
                    width: 123,
                    height: 38,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 123,
                          height: 38,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 231, 151, 150),
                                Color.fromARGB(255, 245, 206, 199),
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AccountCreated(),
                                ),
                              );
                            }, // navigate to next page
                            style: ButtonStyle(
                              shadowColor: const MaterialStatePropertyAll(
                                  Colors.transparent),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Round corners
                                ),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'GmarketSans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(width: 13.4),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
