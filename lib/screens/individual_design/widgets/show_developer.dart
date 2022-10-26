import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ShowDeveloper extends StatefulWidget {
  const ShowDeveloper({super.key, required this.username});
  final String username;

  @override
  State<ShowDeveloper> createState() => _ShowDeveloperState();
}

class _ShowDeveloperState extends State<ShowDeveloper> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.username} Github Id")),
      body: Stack(children: [
        InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse("https:github.com/${widget.username}"),
          ),
          onProgressChanged: (_, progress) {
            setState(() {
              _progress = progress / 100.0;
            });
          },
        ),
        if (_progress != 1.0)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ]),
    );
  }
}
