import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';

import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_message/inbox_msg_1.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_message/inbox_msg_2.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_message/inbox_msg_3.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_message/inbox_msg_4.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/bubble_message/message_1.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/bubble_message/message_2.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/bubble_message/message_3.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/bubble_message/message_4.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Widget> inboxMessages = [
    const InboxMessage1(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    const InboxMessage2(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    const InboxMessage3(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    const InboxMessage4(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start ",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
  ];

  List<int> inboxMessagesIndex = [52, 53, 54, 55];

  final List<Widget> bubbleChat = [
    const Message1(
      message: "Hello boy",
    ),
    const Message2(
      message: "Hello broo",
    ),
    const Message3(
      message: "Hey whats up man",
    ),
    const Message4(
      message: "Hello broo",
    ),
  ];

  List<int> bubbleChatIndex = [56, 57, 58, 59];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20),
                child: Text(
                  "Bubble Chat",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyTheme.lightBluishColor),
                ),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                bubbleChat.length,
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: bubbleChat[index],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Add to favorite'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                favProviderModel.add(bubbleChatIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(bubbleChatIndex[index]))
                                    ? Colors.amber
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20),
                child: Text(
                  "Inbox Messages",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyTheme.lightBluishColor),
                ),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                inboxMessages.length,
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: inboxMessages[index],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Add to favorite'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                favProviderModel.add(inboxMessagesIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(inboxMessagesIndex[index]))
                                    ? Colors.amber
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
