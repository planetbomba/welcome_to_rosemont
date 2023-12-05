import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'web_content_model.dart';
export 'web_content_model.dart';

class WebContentWidget extends StatefulWidget {
  const WebContentWidget({
    super.key,
    this.parameter1,
    String? customStyle,
  })  : customStyle = customStyle ??
            '<style> body, html { margin:0; padding:0; line-height:1.5; color:#000000; Font-size: 16px; } </style>';

  final dynamic parameter1;
  final String customStyle;

  @override
  _WebContentWidgetState createState() => _WebContentWidgetState();
}

class _WebContentWidgetState extends State<WebContentWidget> {
  late WebContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebContentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Html(
      data: '${widget.customStyle}${widget.parameter1?.toString()}',
    );
  }
}
