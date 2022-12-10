import 'package:flutter/material.dart';
import 'github_syntax_view.dart';
import 'multiple_requests_http_client.dart';

class SourceCodeView extends StatelessWidget {
  final String owner;
  final String repository;
  final String ref;
  final List<String> paths;
  final MultipleRequestsHttpClient? client;

  const SourceCodeView({
    required this.owner,
    required this.repository,
    required this.ref,
    required this.paths,
    this.client,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final httpClient = client ?? MultipleRequestsHttpClient();

    return Column(
      children: [
        for (String path in paths)
          GithubSyntaxView(
            owner: owner,
            repository: repository,
            ref: ref,
            path: path,
            client: httpClient,
          ),
      ],
    );
  }
}
