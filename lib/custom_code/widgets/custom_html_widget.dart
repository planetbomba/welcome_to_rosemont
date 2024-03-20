// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class CustomHtmlWidget extends StatefulWidget {
  const CustomHtmlWidget({
    super.key,
    this.width,
    this.height,
    required this.htmlContent,
  });

  final double? width;
  final double? height;
  final String htmlContent;

  @override
  State<CustomHtmlWidget> createState() => _CustomHtmlWidgetState();
}

class _CustomHtmlWidgetState extends State<CustomHtmlWidget> {
  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      widget.htmlContent,
      textStyle: TextStyle(fontSize: 16, height: 1.5),
    );
  }
}
