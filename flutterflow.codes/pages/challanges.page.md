import '/backend/backend.dart';
import '/components/item_workout_list/item_workout_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'challanges_page_model.dart';
export 'challanges_page_model.dart';

class ChallangesPageWidget extends StatefulWidget {
  const ChallangesPageWidget({
    super.key,
    String? title,
  }) : this.title = title ?? 'Featured Workouts';

  final String title;

  static String routeName = 'ChallangesPage';
  static String routePath = '/challangesPage';

  @override
  State<ChallangesPageWidget> createState() => _ChallangesPageWidgetState();
}

class _ChallangesPageWidgetState extends State<ChallangesPageWidget> {
  late ChallangesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallangesPageModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                        valueOrDefault<String>(
                          widget!.title,
                          'Challanges',
                        ),
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
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.search,
                        color: FlutterFlowTheme.of(context).neutral50,
                        size: 20,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
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
                          0,
                          16,
                          0,
                          16,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: listViewChallengeRecordList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 30),
                        itemBuilder: (context, listViewIndex) {
                          final listViewChallengeRecord =
                              listViewChallengeRecordList[listViewIndex];
                          return wrapWithModel(
                            model: _model.itemWorkoutListModels.getModel(
                              listViewIndex.toString(),
                              listViewIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ItemWorkoutListWidget(
                              key: Key(
                                'Keyzfp_${listViewIndex.toString()}',
                              ),
                              name: listViewChallengeRecord.name,
                              photoUrl: listViewChallengeRecord.photoUrl,
                            ),
                          );
                        },
                      );
                    },
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
