import '/components/d_e_s_bottom_navigator/d_e_s_bottom_navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'd_e_s_badge_widget.dart' show DESBadgeWidget;
import 'package:flutter/material.dart';

class DESBadgeModel extends FlutterFlowModel<DESBadgeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DESBottomNavigator component.
  late DESBottomNavigatorModel dESBottomNavigatorModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dESBottomNavigatorModel =
        createModel(context, () => DESBottomNavigatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dESBottomNavigatorModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
