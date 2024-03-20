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
import 'package:share_plus/share_plus.dart';
import 'event_details_model.dart';
export 'event_details_model.dart';

class EventDetailsWidget extends StatefulWidget {
  const EventDetailsWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<EventDetailsWidget> createState() => _EventDetailsWidgetState();
}

class _EventDetailsWidgetState extends State<EventDetailsWidget> {
  late EventDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventDetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: EventDetailCall.call(
        id: widget.id,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        final eventDetailsEventDetailResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            floatingActionButton: Align(
              alignment: AlignmentDirectional(1.0, 1.0),
              child: Builder(
                builder: (context) => FloatingActionButton(
                  onPressed: () async {
                    await Share.share(
                      '${getJsonField(
                        eventDetailsEventDetailResponse.jsonBody,
                        r'''$.title''',
                      ).toString()} at ${getJsonField(
                        eventDetailsEventDetailResponse.jsonBody,
                        r'''$.location''',
                      ).toString()} on ${getJsonField(
                        eventDetailsEventDetailResponse.jsonBody,
                        r'''$.start_date''',
                      ).toString()}   ${getJsonField(
                        eventDetailsEventDetailResponse.jsonBody,
                        r'''$.parent_link''',
                      ).toString()}',
                      sharePositionOrigin: getWidgetBoundingBox(context),
                    );
                  },
                  backgroundColor: FlutterFlowTheme.of(context).success,
                  elevation: 8.0,
                  child: Icon(
                    Icons.ios_share,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              iconTheme: IconThemeData(
                  color: FlutterFlowTheme.of(context).primaryBackground),
              automaticallyImplyLeading: true,
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/uGjsTrXUMfLWaF_a-L0Kn.png',
                    width: 155.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 500),
                      fadeOutDuration: Duration(milliseconds: 500),
                      imageUrl: getJsonField(
                        eventDetailsEventDetailResponse.jsonBody,
                        r'''$.event_image''',
                      ).toString(),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      fit: BoxFit.cover,
                      errorWidget: (context, error, stackTrace) => Image.asset(
                        'assets/images/error_image.png',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            functions.makeUpperCase(getJsonField(
                              eventDetailsEventDetailResponse.jsonBody,
                              r'''$.title''',
                            ).toString())!,
                            maxLines: 3,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w900,
                                  lineHeight: 1.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Text(
                            functions.makeUpperCase(getJsonField(
                              eventDetailsEventDetailResponse.jsonBody,
                              r'''$.start_date''',
                            ).toString())!,
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w900,
                                  lineHeight: 1.0,
                                ),
                          ),
                        ),
                        Text(
                          getJsonField(
                            eventDetailsEventDetailResponse.jsonBody,
                            r'''$.times''',
                          ).toString(),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    lineHeight: 1.0,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(getJsonField(
                                    eventDetailsEventDetailResponse.jsonBody,
                                    r'''$.parent_link''',
                                  ).toString());
                                },
                                text: 'LEARN MORE',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(getJsonField(
                                    eventDetailsEventDetailResponse.jsonBody,
                                    r'''$.ticket_link''',
                                  ).toString());
                                },
                                text: 'TICKETS',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).success,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        custom_widgets.CustomHtmlWidget(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 300.0,
                          htmlContent: getJsonField(
                            eventDetailsEventDetailResponse.jsonBody,
                            r'''$.event_description''',
                          ).toString(),
                        ),
                      ],
                    ),
                  ),
                ].addToEnd(SizedBox(height: 50.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
