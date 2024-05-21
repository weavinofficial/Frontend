import 'package:flutter/material.dart';

class PostLikePage extends StatefulWidget {
  const PostLikePage({super.key});

  @override
  _PostLikePage createState() => _PostLikePage();
}

class _PostLikePage extends State<PostLikePage> {
  int _counter = 0;
  bool _isLiked = false;
  bool _isReplying = false;
  TextEditingController _replyController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleLike() {
    setState(
      () {
        _isLiked = !_isLiked;
        if (_isLiked) {
          _incrementCounter();
        }
      },
    );
  }

  void _toggleReply() {
    setState(() {
      _isReplying = !_isReplying;
      if (!_isReplying) {
        _replyController.clear();
        FocusScope.of(context).unfocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.81, -0.59),
            end: Alignment(-0.81, 0.59),
            colors: [Color(0xFFF5CEC7), Color(0xFFE79796)],
          ),
        ),
        padding: const EdgeInsets.only(top: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 62),
              Row(
                children: [
                  Image.asset('assets/images/community.png',
                      width: 503.5, height: 181)
                ],
              ),
              const SizedBox(height: 58),
              Container(
                padding: const EdgeInsets.fromLTRB(33.0, 48.0, 30.0, 30.0),
                height: MediaQuery.of(context).size.height,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.75),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(width: 13),
                          const Text(
                            'Anonymous Rabbit ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 180,
                          height: 20,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: _toggleLike, // 클릭시 하트 색 채워짐, 카운트 증가
                                child: Image.asset(
                                    'assets/images/Heart_Icon.png',
                                    width: 17),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '$_counter',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                    'assets/images/Comment_Icon.png',
                                    width: 17),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Image.asset('assets/images/People_Icon.png',
                                  width: 17),
                              const SizedBox(width: 5),
                              const Text(
                                '300',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'GmarketSans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 23),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            const Text(
                              'Uploaded Date',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              width: 53,
                            ),
                            Container(
                              width: 165,
                              height: 23,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFFB284),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      '2024 - 02 - 04',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 14),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      '22:03',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 17),
                      Container(
                        width: 322,
                        height: 121,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            'Rate my drawing!',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 12,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          Image.asset('assets/images/Heart2_Icon.png',
                              width: 25),
                          const SizedBox(
                            width: 36,
                          ),
                          Image.asset('assets/images/Bookmark_Icon.png',
                              width: 25),
                          const SizedBox(
                            width: 36,
                          ),
                          Image.asset('assets/images/Share_Icon.png',
                              width: 25),
                          const SizedBox(
                            width: 36,
                          ),
                          Image.asset('assets/images/Report_Icon.png',
                              width: 25),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Comments',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //comments box
                      Container(
                        width: 322,
                        height: 80,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              child: Container(
                                width: 322,
                                height: 45,
                                decoration: const ShapeDecoration(
                                  color: Color(0x96FFC98B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFD9D9D9),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    const Text(
                                      'Anonymous Duck ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 26,
                                    ),
                                    const Text(
                                      '2024-02-04',
                                      style: TextStyle(
                                        color: Color(0xFF727272),
                                        fontSize: 10,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(width: 9),
                                    const Text(
                                      '22:01',
                                      style: TextStyle(
                                        color: Color(0xFF727272),
                                        fontSize: 10,
                                        fontFamily: 'Noto Sans',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Image.asset('assets/images/Report_Icon.png',
                                        width: 15)
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                                left: 16,
                                right: 84,
                                top: 56,
                                child: Text(
                                  'I love your drawing! This is a masterpiece... :))',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Noto Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      Row(
                        children: [
                          GestureDetector(
                            onTap: _toggleReply,
                            child: const Text(
                              'Reply',
                              style: TextStyle(
                                color: Color(0xFFFFC98B),
                                fontSize: 10,
                                fontFamily: 'Noto Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'See Comments',
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 10,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      if (_isReplying)
                        Container(
                          width: 298,
                          height: 34,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextFormField(
                                    controller: _replyController,
                                    decoration: const InputDecoration(
                                      hintText: 'Type your reply here...',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 1.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        _toggleReply();
                                      },
                                      child: const Text(
                                        'Post',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
