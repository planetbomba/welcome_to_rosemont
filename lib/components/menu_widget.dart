import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFDFDFDF), Color(0x00FFFFFF)],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                  ),
                  alignment: AlignmentDirectional(0, 0.005),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 50, 25, 0),
                      child: Image.asset(
                        'assets/images/rose-logo.png',
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 5, 16, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 16, 5),
                        child: Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).impact,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 5, 16, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 16, 5),
                        child: Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).impact,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
