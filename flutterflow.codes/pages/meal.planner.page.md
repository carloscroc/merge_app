import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'meal_planner_page_model.dart';
export 'meal_planner_page_model.dart';

/// Loading Meal Plan Screen
class MealPlannerPageWidget extends StatefulWidget {
  const MealPlannerPageWidget({super.key});

  static String routeName = 'MealPlannerPage';
  static String routePath = '/mealPlannerPage';

  @override
  State<MealPlannerPageWidget> createState() => _MealPlannerPageWidgetState();
}

class _MealPlannerPageWidgetState extends State<MealPlannerPageWidget> {
  late MealPlannerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealPlannerPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 2000,
        ),
      );

      context.goNamed(MealPageWidget.routeName);
    });
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
            child: FlutterFlowIconButton(
              borderRadius: 16,
              buttonSize: 40,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/7b19sk.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 40, 16, 0),
                child: Text(
                  'Hold on, We are preparing best meal plan for you',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        lineHeight: 1.2,
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
