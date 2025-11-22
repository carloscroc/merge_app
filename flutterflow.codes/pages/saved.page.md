import '/components/item_saved/item_saved_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'saved_page_model.dart';
export 'saved_page_model.dart';

class SavedPageWidget extends StatefulWidget {
  const SavedPageWidget({super.key});

  static String routeName = 'SavedPage';
  static String routePath = '/savedPage';

  @override
  State<SavedPageWidget> createState() => _SavedPageWidgetState();
}

class _SavedPageWidgetState extends State<SavedPageWidget>
    with TickerProviderStateMixin {
  late SavedPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      color: FlutterFlowTheme.of(context).neutral50,
                      size: 30,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Saved',
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
                  FlutterFlowIconButton(
                    borderRadius: 8,
                    buttonSize: 40,
                    icon: Icon(
                      FFIcons.ksortDescending,
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
                        FFIcons.kfilter,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0, 0),
                          child: TabBar(
                            labelColor: FlutterFlowTheme.of(context).primary,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).neutral300,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Tab(
                                text: 'Workouts',
                              ),
                              Tab(
                                text: 'Meditation',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.itemSavedModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                      ]
                                          .divide(SizedBox(height: 16))
                                          .around(SizedBox(height: 16)),
                                    ),
                                  ),
                                ],
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.itemSavedModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel10,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel11,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel12,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel13,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel14,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel15,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                        wrapWithModel(
                                          model: _model.itemSavedModel16,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ItemSavedWidget(),
                                        ),
                                      ]
                                          .divide(SizedBox(height: 16))
                                          .around(SizedBox(height: 16)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
