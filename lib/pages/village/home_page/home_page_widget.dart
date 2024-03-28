import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Image.asset(
              'assets/images/uGjsTrXUMfLWaF_a-L0Kn.png',
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 225.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: StreamBuilder<List<SliderItemsRecord>>(
                  stream: querySliderItemsRecord(
                    queryBuilder: (sliderItemsRecord) => sliderItemsRecord
                        .where(
                          'status',
                          isEqualTo: true,
                        )
                        .orderBy('sort'),
                  ),
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
                    List<SliderItemsRecord> pageViewSliderItemsRecordList =
                        snapshot.data!;
                    return Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: _model.pageViewController ??=
                                PageController(
                                    initialPage: min(
                                        0,
                                        pageViewSliderItemsRecordList.length -
                                            1)),
                            scrollDirection: Axis.horizontal,
                            itemCount: pageViewSliderItemsRecordList.length,
                            itemBuilder: (context, pageViewIndex) {
                              final pageViewSliderItemsRecord =
                                  pageViewSliderItemsRecordList[pageViewIndex];
                              return CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 500),
                                fadeOutDuration: Duration(milliseconds: 500),
                                imageUrl: pageViewSliderItemsRecord.image,
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 225.0,
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: smooth_page_indicator.SmoothPageIndicator(
                                controller: _model.pageViewController ??=
                                    PageController(
                                        initialPage: min(
                                            0,
                                            pageViewSliderItemsRecordList
                                                    .length -
                                                1)),
                                count: pageViewSliderItemsRecordList.length,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) async {
                                  await _model.pageViewController!
                                      .animateToPage(
                                    i,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect:
                                    smooth_page_indicator.ExpandingDotsEffect(
                                  expansionFactor: 1.5,
                                  spacing: 8.0,
                                  radius: 16.0,
                                  dotWidth: 16.0,
                                  dotHeight: 16.0,
                                  dotColor: Color(0xFF9E9E9E),
                                  activeDotColor:
                                      FlutterFlowTheme.of(context).accent3,
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 15.0, 50.0, 15.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (Navigator.of(context).canPop()) {
                      context.pop();
                    }
                    context.pushNamed('ThingsToDo');
                  },
                  text: 'THINGS TO DO',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('descc_home');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/dN1O44es_QMzhGQzjyqXN.jpg',
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 1.0),
                          child: Container(
                            width: double.infinity,
                            height: 75.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0x00990000), Color(0xB11E2429)],
                                stops: [0.0, 0.4],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.85),
                          child: Text(
                            'DES CONVENTION CENTER',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('allstateHome');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/ttIb80wjYq7KWn3j5li57.jpg',
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 1.0),
                          child: Container(
                            width: double.infinity,
                            height: 75.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0x00990000), Color(0xB11E2429)],
                                stops: [0.0, 0.4],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.85),
                          child: Text(
                            'ALLSTATE ARENA',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/oiIc_lxL_EjyJFeW6Tehy.jpg',
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.2, 1.0),
                        child: Container(
                          width: double.infinity,
                          height: 75.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x00990000), Color(0xB11E2429)],
                              stops: [0.0, 0.4],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.85),
                        child: Text(
                          'PARKWAY BANK PARK',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/iiWzvM-cjxTeEyGPvwwXd.jpg',
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.2, 1.0),
                        child: Container(
                          width: double.infinity,
                          height: 75.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x00990000), Color(0xB11E2429)],
                              stops: [0.0, 0.4],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.85),
                        child: Text(
                          'ROSEMONT THEATRE',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/O2xS2e28H7bxD3jx-HDd3.jpg',
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.2, 1.0),
                        child: Container(
                          width: double.infinity,
                          height: 75.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x00990000), Color(0xB11E2429)],
                              stops: [0.0, 0.4],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.85),
                        child: Text(
                          'SPORTS COMPLEX',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 75.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/QZhFNsmxNtxIWH_QpBXnx.jpg',
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.2, 1.0),
                        child: Container(
                          width: double.infinity,
                          height: 75.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x00990000), Color(0xB11E2429)],
                              stops: [0.0, 0.4],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.85),
                        child: Text(
                          'ROSEMONT HEALTH & FITNESS',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
