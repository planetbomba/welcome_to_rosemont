import '/components/village_bottom_navigator/village_bottom_navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'sleep_detail_page_model.dart';
export 'sleep_detail_page_model.dart';

class SleepDetailPageWidget extends StatefulWidget {
  const SleepDetailPageWidget({super.key});

  @override
  _SleepDetailPageWidgetState createState() => _SleepDetailPageWidgetState();
}

class _SleepDetailPageWidgetState extends State<SleepDetailPageWidget> {
  late SleepDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SleepDetailPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            const Column(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 1.00),
              child: wrapWithModel(
                model: _model.villageBottomNavigatorModel,
                updateCallback: () => setState(() {}),
                child: const VillageBottomNavigatorWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
