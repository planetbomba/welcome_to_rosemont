import '/components/village_bottom_navigator/village_bottom_navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'things_to_do_widget.dart' show ThingsToDoWidget;
import 'package:flutter/material.dart';

class ThingsToDoModel extends FlutterFlowModel<ThingsToDoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for VillageBottomNavigator component.
  late VillageBottomNavigatorModel villageBottomNavigatorModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    villageBottomNavigatorModel =
        createModel(context, () => VillageBottomNavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    villageBottomNavigatorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
