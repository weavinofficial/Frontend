import "package:flutter/material.dart";
import "package:frontend/pages/chat_page.dart";
import "package:frontend/widgets/navigation_bar.dart";

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

class MessageList extends StatefulWidget {
  MessageList({super.key});

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
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
      isNewMessage: false,
    ),
    ChatRoom(
      name: 'dummy',
      lastMessage: 'dummy',
      timestamp: '08:45 AM',
      isNewMessage: false,
    ),
    // TODO: Connect with backend
  ];

  void _deleteChatRoom(int index) {
    final chatroom = chatRooms[index];
    setState(() {
      chatRooms.removeAt(index);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Left chatroom'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              chatRooms.insert(index, chatroom);
            });
          },
        ),
      ),
    );
  }

  void _pinChatRoom(int index) {
    setState(() {
      final pinnedChatRoom = chatRooms.removeAt(index);
      chatRooms.insert(0, pinnedChatRoom);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          duration: Duration(seconds: 3), content: Text('pinned to the top')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFE79796),
                  Color(0xFFF5CEC7),
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 32),
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
                  width: 150,
                  height: 29,
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
                        fontSize: 13,
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
                            horizontal: 0, vertical: 0.5),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onLongPress: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5, top: 18),
                                            child: Text(
                                              chatRooms[index].name,
                                              style: const TextStyle(
                                                  height: 0,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('Pin to top'),
                                            onTap: () {
                                              _pinChatRoom(index);
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Leave chatroom'),
                                            onTap: () {
                                              _deleteChatRoom(index);
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          ListTile(
                                            title: const Text('Mute messages'),
                                            onTap: () {
                                              // mute messages
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          const SizedBox(height: 5)
                                        ]),
                                  );
                                },
                              );
                            },
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ChatScreen(),
                                ),
                              );
                            },
                            splashColor: Colors.white
                                .withAlpha(30), // Customize the splash color
                            highlightColor: Colors.grey
                                .withAlpha(15), // Customize the highlight color
                            child: ListTile(
                              minVerticalPadding: 0,
                              minLeadingWidth: 0,
                              //insert profile picture
                              leading: Container(
                                width: 55,
                                height: 55,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 193, 184, 184),
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 18, right: 25, top: 0, bottom: 0),
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
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const CustomNavigationBar(),
              ],
            ),
          );
        },
      ),
    );
  }
}
