import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'd_e_s_bottom_navigator_model.dart';
export 'd_e_s_bottom_navigator_model.dart';

class DESBottomNavigatorWidget extends StatefulWidget {
  const DESBottomNavigatorWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  _DESBottomNavigatorWidgetState createState() =>
      _DESBottomNavigatorWidgetState();
}

class _DESBottomNavigatorWidgetState extends State<DESBottomNavigatorWidget> {
  late DESBottomNavigatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DESBottomNavigatorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: 360.0,
        height: 90.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).gray600,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Opacity(
              opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.cottage,
                      color: FlutterFlowTheme.of(context).white,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'HomePage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  Text(
                    'HOME',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).white,
                        ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.calendar_month,
                      color: FlutterFlowTheme.of(context).white,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'ThingsToDo',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  Text(
                    'EVENTS',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).white,
                        ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 10.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 25.0,
                        borderWidth: 0.0,
                        buttonSize: 50.0,
                        icon: Icon(
                          FFIcons.krose,
                          color: FlutterFlowTheme.of(context).white,
                          size: 50.0,
                        ),
                        onPressed: () async {
                          context.goNamed(
                            'HomePage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 0.0)),
              ),
            ),
            Opacity(
              opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.bed,
                      color: FlutterFlowTheme.of(context).white,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'SleepPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'SLEEP',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).white,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: widget.selectedPageIndex == 5 ? 1.0 : 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.newspaper_sharp,
                      color: FlutterFlowTheme.of(context).white,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'NewsPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'NEWS',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).white,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ].addToStart(const SizedBox(width: 16.0)).addToEnd(const SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
