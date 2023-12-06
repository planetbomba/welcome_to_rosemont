import '/components/village_bottom_navigator/village_bottom_navigator_widget.dart';
import '/components/web_content/web_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'news_detail_page_widget.dart' show NewsDetailPageWidget;
import 'package:flutter/material.dart';

class NewsDetailPageModel extends FlutterFlowModel<NewsDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webContent component.
  late WebContentModel webContentModel;
  // Model for VillageBottomNavigator component.
  late VillageBottomNavigatorModel villageBottomNavigatorModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webContentModel = createModel(context, () => WebContentModel());
    villageBottomNavigatorModel =
        createModel(context, () => VillageBottomNavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webContentModel.dispose();
    villageBottomNavigatorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
