import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'start_widget.dart' show StartWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StartModel extends FlutterFlowModel<StartWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  int timerMilliseconds = 1500;
  String timerValue = StopWatchTimer.getDisplayTime(1500, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
