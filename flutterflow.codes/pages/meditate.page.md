import '/backend/backend.dart';
import '/components/item_course_horizontal/item_course_horizontal_widget.dart';
import '/components/item_featured_workouts/item_featured_workouts_widget.dart';
import '/components/item_meditation_horizontal/item_meditation_horizontal_widget.dart';
import '/components/item_music_horizontal/item_music_horizontal_widget.dart';
import '/components/item_sleep_horizontal/item_sleep_horizontal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'meditate_page_model.dart';
export 'meditate_page_model.dart';

class MeditatePageWidget extends StatefulWidget {
  const MeditatePageWidget({super.key});

  static String routeName = 'MeditatePage';
  static String routePath = '/meditatePage';

  @override
  State<MeditatePageWidget> createState() => _MeditatePageWidgetState();
}

class _MeditatePageWidgetState extends State<MeditatePageWidget> {
  late MeditatePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditatePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(56, 0, 0, 0),
                      child: Text(
                        'Meditate',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .paragraphP1SemiBold
                            .override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .paragraphP1SemiBold
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .paragraphP1SemiBold
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8,
                    buttonSize: 40,
                    icon: Icon(
                      Icons.bookmark_border,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6, 0, 8, 0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8,
                      buttonSize: 40,
                      icon: Icon(
                        FFIcons.ksearch,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ].addToStart(SizedBox(width: 60)),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(
                  0,
                  16,
                  0,
                  60,
                ),
                primary: false,
                scrollDirection: Axis.vertical,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'All',
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Color(0x65333300),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 11,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Morning',
                          icon: Icon(
                            Icons.wb_sunny_outlined,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).darkMode500,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Sleep',
                          icon: Icon(
                            FFIcons.kspeedboat,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).darkMode500,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Breath',
                          icon: FaIcon(
                            FontAwesomeIcons.water,
                            size: 14,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).darkMode500,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ].divide(SizedBox(width: 16)).around(SizedBox(width: 16)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Meditations For You',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              MeditationsPageWidget.routeName,
                              queryParameters: {
                                'title': serializeParam(
                                  'Meditations For You',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Text(
                            'See All',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<MeditationRecord>>(
                        stream: FFAppState().meditationsCache(
                          requestFn: () => queryMeditationRecord(),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<MeditationRecord> listViewMeditationRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              16,
                              0,
                              16,
                              0,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewMeditationRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(width: 16),
                            itemBuilder: (context, listViewIndex) {
                              final listViewMeditationRecord =
                                  listViewMeditationRecordList[listViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      MeditationDetailsPageWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.itemFeaturedWorkoutsModels1
                                      .getModel(
                                    listViewIndex.toString(),
                                    listViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemFeaturedWorkoutsWidget(
                                    key: Key(
                                      'Keyirc_${listViewIndex.toString()}',
                                    ),
                                    imageUrl: listViewMeditationRecord.photoUrl,
                                    name: listViewMeditationRecord.name,
                                    onTap: () async {},
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Challenges',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              MeditationsPageWidget.routeName,
                              queryParameters: {
                                'title': serializeParam(
                                  'Challenges',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Text(
                            'See All',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<ChallengeRecord>>(
                        stream: FFAppState().challangesCache(
                          requestFn: () => queryChallengeRecord(),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<ChallengeRecord> listViewChallengeRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              16,
                              0,
                              16,
                              0,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewChallengeRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(width: 16),
                            itemBuilder: (context, listViewIndex) {
                              final listViewChallengeRecord =
                                  listViewChallengeRecordList[listViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      MeditationDetailsPageWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.itemFeaturedWorkoutsModels2
                                      .getModel(
                                    listViewIndex.toString(),
                                    listViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemFeaturedWorkoutsWidget(
                                    key: Key(
                                      'Keycz3_${listViewIndex.toString()}',
                                    ),
                                    imageUrl: listViewChallengeRecord.photoUrl,
                                    name: listViewChallengeRecord.name,
                                    onTap: () async {
                                      context.pushNamed(
                                          MeditationDetailsPageWidget
                                              .routeName);
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Meditative Mornings',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              MeditationsPageWidget.routeName,
                              queryParameters: {
                                'title': serializeParam(
                                  'Meditative Mornings',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Text(
                            'See All',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<MeditiveMorningsRecord>>(
                        stream: FFAppState().medMornings(
                          requestFn: () => queryMeditiveMorningsRecord(),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<MeditiveMorningsRecord>
                              listViewMeditiveMorningsRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                listViewMeditiveMorningsRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(width: 16),
                            itemBuilder: (context, listViewIndex) {
                              final listViewMeditiveMorningsRecord =
                                  listViewMeditiveMorningsRecordList[
                                      listViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      MeditationDetailsPageWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.itemMeditationHorizontalModels
                                      .getModel(
                                    listViewIndex.toString(),
                                    listViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemMeditationHorizontalWidget(
                                    key: Key(
                                      'Keyjwu_${listViewIndex.toString()}',
                                    ),
                                    title: listViewMeditiveMorningsRecord.name,
                                    photoUrl:
                                        listViewMeditiveMorningsRecord.photoUrl,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Courses For You',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              CoursesPageWidget.routeName,
                              queryParameters: {
                                'title': serializeParam(
                                  'Courses For You',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Text(
                            'See All',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(),
                    child: StreamBuilder<List<MedCourseRecord>>(
                      stream: FFAppState().medCoursesCache(
                        requestFn: () => queryMedCourseRecord(),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<MedCourseRecord> listViewMedCourseRecordList =
                            snapshot.data!;

                        return ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          scrollDirection: Axis.horizontal,
                          itemCount: listViewMedCourseRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(width: 16),
                          itemBuilder: (context, listViewIndex) {
                            final listViewMedCourseRecord =
                                listViewMedCourseRecordList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                    MeditationCourseDetailsPageWidget
                                        .routeName);
                              },
                              child: wrapWithModel(
                                model:
                                    _model.itemCourseHorizontalModels.getModel(
                                  listViewIndex.toString(),
                                  listViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ItemCourseHorizontalWidget(
                                  key: Key(
                                    'Keyv2q_${listViewIndex.toString()}',
                                  ),
                                  name: listViewMedCourseRecord.name,
                                  photoUrl: listViewMedCourseRecord.photoUrl,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Music & Beats',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Text(
                          'See All',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(),
                    child: StreamBuilder<List<MusicRecord>>(
                      stream: FFAppState().musicsCache(
                        requestFn: () => queryMusicRecord(),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<MusicRecord> listViewMusicRecordList =
                            snapshot.data!;

                        return ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          primary: false,
                          scrollDirection: Axis.horizontal,
                          itemCount: listViewMusicRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(width: 16),
                          itemBuilder: (context, listViewIndex) {
                            final listViewMusicRecord =
                                listViewMusicRecordList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(MusicPlayerPageWidget.routeName);
                              },
                              child: wrapWithModel(
                                model:
                                    _model.itemMusicHorizontalModels.getModel(
                                  listViewIndex.toString(),
                                  listViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ItemMusicHorizontalWidget(
                                  key: Key(
                                    'Keygwi_${listViewIndex.toString()}',
                                  ),
                                  name: listViewMusicRecord.name,
                                  photoUrl: listViewMusicRecord.photoUrl,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'For Better Sleep',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Text(
                          'See All',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<SleepRecord>>(
                        stream: FFAppState().sleepsCache(
                          requestFn: () => querySleepRecord(),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<SleepRecord> listViewSleepRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              16,
                              0,
                              16,
                              0,
                            ),
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewSleepRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(width: 16),
                            itemBuilder: (context, listViewIndex) {
                              final listViewSleepRecord =
                                  listViewSleepRecordList[listViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      MeditationDetailsPageWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model:
                                      _model.itemSleepHorizontalModels.getModel(
                                    listViewIndex.toString(),
                                    listViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemSleepHorizontalWidget(
                                    key: Key(
                                      'Keyqqf_${listViewIndex.toString()}',
                                    ),
                                    imageUrl: listViewSleepRecord.photoUrl,
                                    name: listViewSleepRecord.name,
                                    onTap: () async {},
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
