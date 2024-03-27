import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'des_about_model.dart';
export 'des_about_model.dart';

class DesAboutWidget extends StatefulWidget {
  const DesAboutWidget({super.key});

  @override
  State<DesAboutWidget> createState() => _DesAboutWidgetState();
}

class _DesAboutWidgetState extends State<DesAboutWidget> {
  late DesAboutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DesAboutModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: RosemontApiGroup.getPageCall.call(
        value: 'des-about',
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final desAboutGetPageResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).descc,
              iconTheme: IconThemeData(
                  color: FlutterFlowTheme.of(context).primaryBackground),
              automaticallyImplyLeading: true,
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/dessLogo.png',
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 500),
                        fadeOutDuration: Duration(milliseconds: 500),
                        imageUrl: functions.getImage(getJsonField(
                          desAboutGetPageResponse.jsonBody,
                          r'''$.data[0].image''',
                        ).toString())!,
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getJsonField(
                              desAboutGetPageResponse.jsonBody,
                              r'''$.data[0].title''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).descc,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          custom_widgets.CustomHtmlWidget(
                            width: double.infinity,
                            height: 200.0,
                            htmlContent: getJsonField(
                              desAboutGetPageResponse.jsonBody,
                              r'''$.data[0].body''',
                            ).toString(),
                          ),
                        ],
                      ),
                    ),
                  ].addToEnd(SizedBox(height: 100.0)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
