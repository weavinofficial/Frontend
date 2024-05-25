import "package:flutter/material.dart";

void _openeditor() {}

class ChatRoom {
  final String name;
  final String lastMessage;
  final String timestamp;
  bool isNewMessage;

  ChatRoom(
      {required this.name,
      required this.lastMessage,
      required this.timestamp,
      this.isNewMessage = false});
}

class MessageList extends StatelessWidget {
  MessageList({super.key});

  final List<ChatRoom> chatRooms = [
    ChatRoom(
      name: 'Luke',
      lastMessage: 'Chira go',
      timestamp: '10:30 AM',
      isNewMessage: true,
    ),
    ChatRoom(
      name: 'Erica',
      lastMessage: 'ㅋㅎㅋㅎㅋㅎㅋㅎㅋㅎㅋㅎㅋㅎㅋ',
      timestamp: '09:15 AM',
    ),
    ChatRoom(name: 'dummy', lastMessage: 'dummy', timestamp: '08:45 AM'),
    // TODO: Connect with backend
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 231, 151, 150),
                  Color.fromARGB(255, 245, 206, 199),
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 7),
                //Edit button
                Row(
                  children: [
                    const SizedBox(width: 7),
                    SizedBox(
                      width: 30,
                      height: 25,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            padding: const EdgeInsets.all(0),
                            splashFactory: NoSplash.splashFactory),
                        onPressed: _openeditor,
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFF727272),
                            fontSize: 10,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //Weave' image
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxWidth * 0.2,
                  child: Image.asset(
                    'assets/images/Weave.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 23),

                //Searchbar
                Container(
                  width: 120,
                  height: 25,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                    cursorColor: Colors.black,
                    cursorHeight: 14,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.white,
                      ),
                      prefixIconConstraints: const BoxConstraints(minWidth: 28),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                //Chatrooms
                Expanded(
                  child: ListView.builder(
                    itemCount: chatRooms.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 0),
                        child: ListTile(
                          minVerticalPadding: 0,
                          minLeadingWidth: 0,
                          leading: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          title: Text(
                            chatRooms[index].name,
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Noto Sans',
                              color: const Color.fromARGB(255, 49, 49, 49),
                              fontWeight: chatRooms[index].isNewMessage
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                          subtitle: Text(
                            chatRooms[index].lastMessage,
                            style: TextStyle(
                              fontSize: 12,
                              color: chatRooms[index].isNewMessage
                                  ? const Color.fromARGB(255, 49, 49, 49)
                                  : const Color.fromARGB(255, 94, 94, 94),
                              fontFamily: 'Noto Sans',
                              fontWeight: chatRooms[index].isNewMessage
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          trailing: Text(
                            chatRooms[index].timestamp,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 94, 94, 94),
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MessageList(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
