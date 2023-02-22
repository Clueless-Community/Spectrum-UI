import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/messages/allmessages/inbox_msg_1.dart';
import 'package:flutter_component_ui/ui_components/messages/allmessages/inbox_msg_2.dart';
import 'package:flutter_component_ui/ui_components/messages/allmessages/inbox_msg_3.dart';
import 'package:flutter_component_ui/ui_components/messages/allmessages/inbox_msg_4.dart';
import 'package:flutter_component_ui/ui_components/messages/allmessages/message_3.dart';
import 'package:flutter_component_ui/ui_components/messages/allmessages/message_4.dart';

import 'allmessages/message_1.dart';
import 'allmessages/message_2.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final List<Widget> messages = [
    Message_1(
      message: "Hello boy",
    ),
    Message_2(
      message: "Hello broo",
    ),
    Message_3(
      message: "Hey whats up man",
    ),
    Message_4(
      message: "Hello broo",
    ),
    InboxMessage_1(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      img_url: 'https://picsum.photos/seed/407/600',
    ),
    InboxMessage_2(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      img_url: 'https://picsum.photos/seed/407/600',
    ),
    InboxMessage_3(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      img_url: 'https://picsum.photos/seed/407/600',
    ),
    InboxMessage_4(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start ",
      img_url: 'https://picsum.photos/seed/407/600',
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
