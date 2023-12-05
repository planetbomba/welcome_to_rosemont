import '/backend/api_requests/api_calls.dart';
import '/components/village_bottom_navigator/village_bottom_navigator_widget.dart';
import '/components/web_content/web_content_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'eat_detail_page_model.dart';
export 'eat_detail_page_model.dart';

class EatDetailPageWidget extends StatefulWidget {
  const EatDetailPageWidget({
    super.key,
    required this.id,
  });

  final String? id;

  @override
  _EatDetailPageWidgetState createState() => _EatDetailPageWidgetState();
}

class _EatDetailPageWidgetState extends State<EatDetailPageWidget> {
  late EatDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EatDetailPageModel());
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

    return FutureBuilder<ApiCallResponse>(
      future: RestaurantsSingleCall.call(
        id: widget.id,
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
        final eatDetailPageRestaurantsSingleResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: true,
              title: Text(
                getJsonField(
                  eatDetailPageRestaurantsSingleResponse.jsonBody,
                  r'''$.title''',
                ).toString(),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: const Duration(milliseconds: 500),
                          fadeOutDuration: const Duration(milliseconds: 500),
                          imageUrl: getJsonField(
                            eatDetailPageRestaurantsSingleResponse.jsonBody,
                            r'''$.image''',
                          ),
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          fit: BoxFit.contain,
                          errorWidget: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/error_image.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  functions.makeUpper(getJsonField(
                                    eatDetailPageRestaurantsSingleResponse
                                        .jsonBody,
                                    r'''$.title''',
                                  ).toString()),
                                  '.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (valueOrDefault<bool>(
                                      getJsonField(
                                        eatDetailPageRestaurantsSingleResponse
                                            .jsonBody,
                                        r'''$.patio''',
                                      )
                                          ? !true
                                          : false,
                                      false,
                                    ))
                                      Text(
                                        'This establishment has an outdoor patio',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.webContentModel1,
                                  updateCallback: () => setState(() {}),
                                  child: WebContentWidget(
                                    parameter1: getJsonField(
                                      eatDetailPageRestaurantsSingleResponse
                                          .jsonBody,
                                      r'''$.description''',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 16.0, 8.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.webContentModel2,
                                  updateCallback: () => setState(() {}),
                                  child: WebContentWidget(
                                    parameter1: getJsonField(
                                      eatDetailPageRestaurantsSingleResponse
                                          .jsonBody,
                                      r'''$.address_and_phone''',
                                    ),
                                    customStyle:
                                        '<style>\nbody, html {\nmargin:0 !important;\npadding:0 !important;\nline-height:1.2;\ncolor:#333333;\nFont-size: 15px;\n}\n</style>',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    if (functions.notBlank(getJsonField(
                                          eatDetailPageRestaurantsSingleResponse
                                              .jsonBody,
                                          r'''$.phone_1''',
                                        ).toString()) ??
                                        true)
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await launchUrl(Uri(
                                            scheme: 'tel',
                                            path: getJsonField(
                                              eatDetailPageRestaurantsSingleResponse
                                                  .jsonBody,
                                              r'''$.phone_1''',
                                            ).toString(),
                                          ));
                                        },
                                        text: 'CALL',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    if (functions.notBlank(getJsonField(
                                          eatDetailPageRestaurantsSingleResponse
                                              .jsonBody,
                                          r'''$.website''',
                                        ).toString()) ??
                                        true)
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await launchURL(getJsonField(
                                            eatDetailPageRestaurantsSingleResponse
                                                .jsonBody,
                                            r'''$.website''',
                                          ).toString());
                                        },
                                        text: 'WEBSITE',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ].addToEnd(const SizedBox(height: 100.0)),
                  ),
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
      },
    );
  }
}
