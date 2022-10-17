import 'package:flutter/material.dart';

class drawerlist extends StatefulWidget {
  const drawerlist({super.key});

  @override
  State<drawerlist> createState() => _drawerlistState();
}

class _drawerlistState extends State<drawerlist> {
  List topics = ['Inbox', 'Sent', 'Trash', 'Spam', 'Forum', 'Updates'];
  String topicChoose = 'Inbox';
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemCount: topics.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: index == 0
                  ? Icon(
                      Icons.inbox,
                      size: topicChoose == topics[index] ? 26 : 20,
                      color: topicChoose == topics[index]
                          ? Color.fromARGB(255, 25, 93, 149)
                          : Colors.black,
                    )
                  : index == 1
                      ? Icon(
                          Icons.send,
                          size: topicChoose == topics[index] ? 26 : 20,
                          color: topicChoose == topics[index]
                              ? Color.fromARGB(255, 25, 93, 149)
                              : Colors.black,
                        )
                      : index == 2
                          ? Icon(
                              Icons.delete,
                              size: topicChoose == topics[index] ? 26 : 20,
                              color: topicChoose == topics[index]
                                  ? Color.fromARGB(255, 25, 93, 149)
                                  : Colors.black,
                            )
                          : index == 3
                              ? Icon(
                                  Icons.error,
                                  size: topicChoose == topics[index] ? 26 : 20,
                                  color: topicChoose == topics[index]
                                      ? Color.fromARGB(255, 25, 93, 149)
                                      : Colors.black,
                                )
                              : index == 4
                                  ? Icon(
                                      Icons.forum,
                                      size: topicChoose == topics[index]
                                          ? 26
                                          : 20,
                                      color: topicChoose == topics[index]
                                          ? Color.fromARGB(255, 25, 93, 149)
                                          : Colors.black,
                                    )
                                  : Icon(
                                      Icons.update,
                                      size: topicChoose == topics[index]
                                          ? 26
                                          : 20,
                                      color: topicChoose == topics[index]
                                          ? Color.fromARGB(255, 25, 93, 149)
                                          : Colors.black,
                                    ),
              title: Text(
                topics[index],
                style: TextStyle(
                    fontSize: topicChoose == topics[index] ? 21 : 17,
                    fontWeight: FontWeight.bold,
                    color: topicChoose == topics[index]
                        ? Color.fromARGB(255, 25, 93, 149)
                        : Colors.black),
              ),
              onTap: () {
                setState(() {
                  topicChoose = topics[index];
                });
                // Navigator.pop(context);
              },
              tileColor: topicChoose == topics[index] ? Color.fromARGB(255, 84, 164, 230) : null,
            );
          }),
        ),
      ),
    );
  }
}
