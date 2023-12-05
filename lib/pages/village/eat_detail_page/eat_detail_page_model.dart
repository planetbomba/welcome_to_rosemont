import '/components/village_bottom_navigator/village_bottom_navigator_widget.dart';
import '/components/web_content/web_content_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'eat_detail_page_widget.dart' show EatDetailPageWidget;
import 'package:flutter/material.dart';

class EatDetailPageModel extends FlutterFlowModel<EatDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webContent component.
  late WebContentModel webContentModel1;
  // Model for webContent component.
  late WebContentModel webContentModel2;
  // Model for VillageBottomNavigator component.
  late VillageBottomNavigatorModel villageBottomNavigatorModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webContentModel1 = createModel(context, () => WebContentModel());
    webContentModel2 = createModel(context, () => WebContentModel());
    villageBottomNavigatorModel =
        createModel(context, () => VillageBottomNavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webContentModel1.dispose();
    webContentModel2.dispose();
    villageBottomNavigatorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
