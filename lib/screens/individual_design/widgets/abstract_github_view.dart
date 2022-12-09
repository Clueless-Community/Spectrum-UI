import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/link.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'copy_button.dart';
import 'multiple_requests_http_client.dart';
import 'package:responsive_builder/responsive_builder.dart';

// REF: https://stackoverflow.com/questions/50696945/flutter-statefulwidget-state-class-inheritance
// REF: https://blog.gskinner.com/archives/2020/08/flutter-extending-statet.html
// REF: https://github.com/diegoveloper/flutter-samples/blob/master/lib/persistent_tabbar/page2.dart
abstract class AbstractGithubView extends StatefulWidget {
  final String apiUrl;
  final String linkUrl;
  final String path;
  final bool hasCopyButton;
  final bool wantKeepAlive;
  final MultipleRequestsHttpClient? client;

  const AbstractGithubView({
    required String owner,
    required String repository,
    required String ref,
    required this.path,
    required this.wantKeepAlive,
    this.hasCopyButton = true,
    this.client,
    Key? key,
  })  : apiUrl =
            'https://api.github.com/repos/$owner/$repository/contents/$path?ref=$ref',
        linkUrl = 'https://github.com/$owner/$repository/blob/$ref/$path',
        super(key: key);
}

abstract class AbstractGithubViewState<T extends AbstractGithubView>
    extends State<T> with AutomaticKeepAliveClientMixin<T> {
  /* REF: https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html
  The future must have been obtained earlier, e.g. during State.initState, State.didUpdateWidget, 
  or State.didChangeDependencies. 
  It must not be created during the State.build or StatelessWidget.build method call when 
  constructing the FutureBuilder. If the future is created at the same time as the FutureBuilder, 
  then every time the FutureBuilder's parent is rebuilt, the asynchronous task will be restarted.
  */
  Future? getGithubContent;
  // ignore: constant_identifier_names
  static const GITHUB_HTTP_HEADERS = {
    'Accept': 'application/vnd.github.v3.raw',
  };

  @override
  void initState() {
    super.initState();
    getGithubContent = _fetchGithubContent();
  }

  Future _fetchGithubContent() {
    if (widget.client != null) {
      return widget.client!.get(
        Uri.parse(widget.apiUrl),
        headers: GITHUB_HTTP_HEADERS,
      );
    } else {
      return http.get(
        Uri.parse(widget.apiUrl),
        headers: GITHUB_HTTP_HEADERS,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final contentWidget = FutureBuilder(
      future: getGithubContent,
      builder: (context, snapshot) {
        final linkText =
            widget.path.substring(widget.path.lastIndexOf('/') + 1);
        if (snapshot.connectionState == ConnectionState.done) {
          if (widget.client != null) {
            widget.client!.close();
          }
          final response = snapshot.data;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Link(
                        uri: Uri.parse(widget.linkUrl),
                        target: kIsWeb
                            ? LinkTarget.blank
                            : LinkTarget.defaultTarget,
                        builder: (BuildContext context,
                            Future<void> Function()? followLink) {
                          return TextButton(
                            onPressed: followLink,
                            child: Text(
                              linkText,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: widget.hasCopyButton &&
                            snapshot.hasData &&
                            response!.statusCode == 200
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: CopyButton(text: response.body))
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
              _buildWidget(context, snapshot)
            ],
          );
        }
        return _buildLoadingIndicator(linkText);
      },
    );

    return getValueForScreenType<bool>(
      context: context,
      mobile: true,
      tablet: false,
    )
        ? Card(
            elevation: 6.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: contentWidget,
            ),
          )
        : Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20.0),
            child: contentWidget,
          );
  }

  Widget _buildWidget(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasData) {
      final response = snapshot.data;
      return response!.statusCode == 200
          ? buildWidget(context, response.body)
          : buildGithubErrorWidget(
              'Failed to fetch content from ${widget.apiUrl}! '
              'Please click the link above to access the github content.');
    } else {
      // print(snapshot.error);
      return buildGithubErrorWidget('Connection error! '
          'Please click the link above to access the github content.');
    }
  }

  Widget buildGithubErrorWidget(String error) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(error),
    );
  }

  Widget buildWidget(BuildContext context, String responseBody);

  Widget _buildLoadingIndicator(String linkText) {
    if (kIsWeb) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    linkText,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: widget.hasCopyButton
                    ? const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.copy),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: LinearProgressIndicator(),
          ),
          Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ],
      );
    } else {
      // shimmer effect not working in web yet
      return _buildShimmer(linkText);
    }
  }

  Widget _buildShimmer(String linkText) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    linkText,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: widget.hasCopyButton
                    ? const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.copy),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 100.0,
            width: double.infinity,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => widget.wantKeepAlive;
}
