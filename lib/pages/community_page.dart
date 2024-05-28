import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int currentTabIndex = 0;
  final int tabCount = 12;
  final int tabsPerPage = 3;
  final List<String> tabNames = [
    'General',
    'Humor',
    'Issue',
    'Daily',
    'Business',
    'CDE',
    'CHS',
    'Computing',
    'Medicine',
    'Music',
    'Pharmacy',
    'Law'
  ];

  @override
  void initState() {
    super.initState();
    _initializeTabController();
  }

  void _initializeTabController() {
    _tabController = TabController(length: tabsPerPage, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  void _nextTabSet() {
    if (currentTabIndex + tabsPerPage < tabCount) {
      setState(() {
        currentTabIndex += tabsPerPage;
        _initializeTabController();
      });
    }
  }

  void _prevTabSet() {
    if (currentTabIndex - tabsPerPage >= 0) {
      setState(() {
        currentTabIndex -= tabsPerPage;
        _initializeTabController();
      });
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildCustomTab(int index) {
    bool isSelected = _tabController.index == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _tabController.animateTo(index);
        });
      },
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromRGBO(255, 255, 255, 0.75)
                : Colors.transparent,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Center(
            child: Text(
              tabNames[currentTabIndex + index],
              style: TextStyle(
                color: isSelected ? const Color(0xffE79796) : Colors.white,
                fontFamily: 'GmarketSans',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(String tabName) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 20.0),
      child: ListView.separated(
        itemCount: 10, // TODO: replace with actual list length
        separatorBuilder: (context, index) =>
            const Divider(color: Color(0xffE79796)),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: const Color(0xffE79796),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Tag ${index + 1}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GmarketSans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10.0),
                              Image.asset('assets/images/tag_icon.png',
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Text(
                          'Post ${index + 1}',
                          style: const TextStyle(
                            fontFamily: 'GmarketSans',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Date ${index + 1}',
                      style: const TextStyle(
                        fontFamily: 'GmarketSans',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Content ${index + 1}',
                  style:
                      const TextStyle(fontSize: 12, fontFamily: 'GmarketSans'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double relativeHeight = MediaQuery.of(context).size.height * (630 / 896);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xffE79796),
                const Color(0xffE79796).withOpacity(0.0)
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset('assets/images/community.png',
                        width: 503.5, height: 181),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 45, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(30),
                          elevation: 5,
                          child: Container(
                            width: 200,
                            height: 29,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'GmarketSans',
                                  fontSize: 11,
                                ),
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor:
                                    const Color.fromRGBO(255, 255, 255, 0.75),
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(color: Colors.white),
                                ),
                                elevation: 0,
                              ),
                              child: const Text('Hot'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(color: Colors.white),
                                ),
                                elevation: 0,
                              ),
                              child: const Text('Recent'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (currentTabIndex > 0)
                    IconButton(
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: _prevTabSet,
                    ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(tabsPerPage, (index) {
                        int tabIndex = currentTabIndex + index;
                        if (tabIndex < tabCount) {
                          return Expanded(child: _buildCustomTab(index));
                        }
                        return Container();
                      }),
                    ),
                  ),
                  if (currentTabIndex + tabsPerPage < tabCount)
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.white),
                      onPressed: _nextTabSet,
                    ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: width,
                    height: relativeHeight,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.75),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            (currentTabIndex == 0 && _tabController.index == 0)
                                ? 0
                                : 50),
                        topRight: Radius.circular(
                            (currentTabIndex == tabCount - tabsPerPage &&
                                    _tabController.index == tabsPerPage - 1)
                                ? 0
                                : 50),
                      ),
                    ),
                    child: TabBarView(
                      controller: _tabController,
                      children: List.generate(tabsPerPage, (index) {
                        int tabIndex = currentTabIndex + index;
                        if (tabIndex < tabCount) {
                          return _buildTabContent(tabNames[tabIndex]);
                        }
                        return Container();
                      }),
                    ),
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
