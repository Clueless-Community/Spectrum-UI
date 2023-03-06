import 'package:flutter/material.dart';

import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_msg_1.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_msg_2.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_msg_3.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/inbox_msg_4.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/message_1.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/message_2.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/message_3.dart';
import 'package:flutter_component_ui/ui_components/messages/all_messages/message_4.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final List<Widget> messages = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: messages[index],
          );
        },
        itemCount: messages.length,
      ),
    );
  }
}
