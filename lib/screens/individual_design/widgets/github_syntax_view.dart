import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'abstract_github_view.dart';
import 'multiple_requests_http_client.dart';

class GithubSyntaxView extends AbstractGithubView {
  final SyntaxTheme syntaxTheme;
  final Syntax? syntax;
  static const Map<String, Syntax> FILE_EXTENSION_SYNTAX_MAPPING = {
    '.dart': Syntax.DART,
    '.c': Syntax.C,
    '.cpp': Syntax.CPP,
    '.js': Syntax.JAVASCRIPT,
    '.kt': Syntax.KOTLIN,
    '.kts': Syntax.KOTLIN,
    '.ktm': Syntax.KOTLIN,
    '.java': Syntax.JAVA,
    '.swift': Syntax.SWIFT,
    '.yml': Syntax.YAML,
    '.yaml': Syntax.YAML,
  };

  GithubSyntaxView({
    required String owner,
    required String repository,
    required String ref,
    required String path,
    SyntaxTheme? theme,
    MultipleRequestsHttpClient? client,
    bool wantKeepAlive = true,
    Key? key,
  })  : syntaxTheme = theme ?? SyntaxTheme.vscodeDark(),
        syntax = FILE_EXTENSION_SYNTAX_MAPPING[
            path.substring(path.lastIndexOf('.')).toLowerCase()],
        super(
          owner: owner,
          repository: repository,
          ref: ref,
          path: path,
          client: client,
          wantKeepAlive: wantKeepAlive,
          key: key,
        );

  @override
  _GithubSyntaxViewState createState() => _GithubSyntaxViewState();
}

class _GithubSyntaxViewState extends AbstractGithubViewState<GithubSyntaxView> {
  @override
  Widget buildWidget(BuildContext context, String responseBody) {
    final numberOfLines = const LineSplitter().convert(responseBody).length;
    final fontSize = Theme.of(context).textTheme.bodyText1!.fontSize;
    
    return SizedBox(
      height: numberOfLines * fontSize!,
      child: SyntaxView(
        code: responseBody,
        syntax: widget.syntax!,
        syntaxTheme: widget.syntaxTheme,
        withZoom: true,
        withLinesCount: true,
        expanded: true,
      ),
    );
  }
}
