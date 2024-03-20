import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'things_to_do_model.dart';
export 'things_to_do_model.dart';

class ThingsToDoWidget extends StatefulWidget {
  const ThingsToDoWidget({super.key});

  @override
  State<ThingsToDoWidget> createState() => _ThingsToDoWidgetState();
}

class _ThingsToDoWidgetState extends State<ThingsToDoWidget>
    with TickerProviderStateMixin {
  late ThingsToDoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThingsToDoModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Image.asset(
              'assets/images/uGjsTrXUMfLWaF_a-L0Kn.png',
              height: 50.0,
              fit: BoxFit.contain,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future:
                    (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                          ..complete(ThingsToDoEventsCall.call()))
                        .future,
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final listViewThingsToDoEventsResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final event = getJsonField(
                        listViewThingsToDoEventsResponse.jsonBody,
                        r'''$''',
                      ).toList();
                      return RefreshIndicator(
                        onRefresh: () async {
                          setState(() => _model.apiRequestCompleter = null);
                          await _model.waitForApiRequestCompleted();
                        },
                        child: ListView.builder(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            100.0,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: event.length,
                          itemBuilder: (context, eventIndex) {
                            final eventItem = event[eventIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EventDetails',
                                    queryParameters: {
                                      'id': serializeParam(
                                        getJsonField(
                                          eventItem,
                                          r'''$.id''',
                                        ),
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x2B202529),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              Duration(milliseconds: 500),
                                          imageUrl: getJsonField(
                                            eventItem,
                                            r'''$.event_image''',
                                          ).toString(),
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                          errorWidget:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.png',
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 8.0, 0.0, 12.0),
                                              child: Text(
                                                functions
                                                    .makeUpperCase(getJsonField(
                                                  eventItem,
                                                  r'''$.title''',
                                                ).toString())!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          lineHeight: 1.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Text(
                                                functions
                                                    .makeUpperCase(getJsonField(
                                                  eventItem,
                                                  r'''$.start_date''',
                                                ).toString())!,
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 19.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          lineHeight: 1.0,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              getJsonField(
                                                eventItem,
                                                r'''$.times''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: valueOrDefault<Color>(
                                            functions
                                                .locationColor(getJsonField(
                                              eventItem,
                                              r'''$.location''',
                                            ).toString()),
                                            FlutterFlowTheme.of(context)
                                                .lineColor,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 8.0, 12.0, 8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                getJsonField(
                                                  eventItem,
                                                  r'''$.location''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
