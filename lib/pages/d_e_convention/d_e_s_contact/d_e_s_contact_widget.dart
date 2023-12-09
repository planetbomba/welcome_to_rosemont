import '/components/d_e_s_bottom_navigator/d_e_s_bottom_navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'd_e_s_contact_model.dart';
export 'd_e_s_contact_model.dart';

class DESContactWidget extends StatefulWidget {
  const DESContactWidget({super.key});

  @override
  _DESContactWidgetState createState() => _DESContactWidgetState();
}

class _DESContactWidgetState extends State<DESContactWidget> {
  late DESContactModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DESContactModel());
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
          backgroundColor: FlutterFlowTheme.of(context).descc,
          automaticallyImplyLeading: false,
          title: Text(
            'CONTACT US',
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
            ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: const [],
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 1.00),
              child: wrapWithModel(
                model: _model.dESBottomNavigatorModel,
                updateCallback: () => setState(() {}),
                child: const DESBottomNavigatorWidget(
                  selectedPageIndex: 5,
                  hidden: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
