import '/components/web_content/web_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sleep_detail_page_widget.dart' show SleepDetailPageWidget;
import 'package:flutter/material.dart';

class SleepDetailPageModel extends FlutterFlowModel<SleepDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webContent component.
  late WebContentModel webContentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webContentModel = createModel(context, () => WebContentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webContentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
