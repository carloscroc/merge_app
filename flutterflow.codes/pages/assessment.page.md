import '/backend/schema/structs/index.dart';
import '/components/assess_desc/assess_desc_widget.dart';
import '/components/assess_title/assess_title_widget.dart';
import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'assessment_page_model.dart';
export 'assessment_page_model.dart';

class AssessmentPageWidget extends StatefulWidget {
  const AssessmentPageWidget({super.key});

  static String routeName = 'AssessmentPage';
  static String routePath = '/assessmentPage';

  @override
  State<AssessmentPageWidget> createState() => _AssessmentPageWidgetState();
}

class _AssessmentPageWidgetState extends State<AssessmentPageWidget> {
  late AssessmentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          leading: FlutterFlowIconButton(
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
              if (_model.currentPage == 1) {
                context.safePop();
              } else {
                _model.currentPage = functions.decrValue(_model.currentPage);
                safeSetState(() {});
              }
            },
          ),
          title: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary900,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 8, 10, 8),
              child: Text(
                '${_model.currentPage.toString()} of 8',
                style: FlutterFlowTheme.of(context).paragraphP3Medium.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontStyle: FlutterFlowTheme.of(context)
                            .paragraphP3Medium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary100,
                      fontSize: 14,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FlutterFlowTheme.of(context)
                          .paragraphP3Medium
                          .fontStyle,
                    ),
              ),
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(HomePageWidget.routeName);
                  },
                  child: Text(
                    'Skip',
                    style: FlutterFlowTheme.of(context)
                        .paragraphP3Regular
                        .override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .paragraphP3Regular
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle: FlutterFlowTheme.of(context)
                              .paragraphP3Regular
                              .fontStyle,
                        ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_model.currentPage == 1)
                  Expanded(
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: wrapWithModel(
                              model: _model.assessTitleModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: AssessTitleWidget(
                                title: 'What are your fitness goals?',
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.assessDescModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: AssessDescWidget(
                              desc:
                                  'Tell us your main reasons to join BalancedBeing',
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Builder(
                              builder: (context) {
                                final goals =
                                    FFAppState().fitnessGoals.toList();

                                return ListView.separated(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: goals.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 16),
                                  itemBuilder: (context, goalsIndex) {
                                    final goalsItem = goals[goalsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.selectedGoals
                                            .contains(goalsItem)) {
                                          _model.removeFromSelectedGoals(
                                              goalsItem);
                                          safeSetState(() {});
                                        } else {
                                          _model.addToSelectedGoals(goalsItem);
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: valueOrDefault<Color>(
                                            _model.selectedGoals
                                                    .contains(goalsItem)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary900
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: _model.selectedGoals
                                                    .contains(goalsItem)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary200
                                                : FlutterFlowTheme.of(context)
                                                    .darkMode50,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Text(
                                            valueOrDefault<String>(
                                              goalsItem,
                                              'Improve Strength',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .paragraphP2Medium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .paragraphP2Medium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 16)),
                      ),
                    ),
                  ),
                if (_model.currentPage == 2)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title:
                                'How experienced are you in exercising and meditating?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.assessDescModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessDescWidget(
                            desc:
                                'We’ll curate classes and sessions according to \nyour experience.',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Builder(
                            builder: (context) {
                              final experiences =
                                  FFAppState().experiences.toList();

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: experiences.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 16),
                                itemBuilder: (context, experiencesIndex) {
                                  final experiencesItem =
                                      experiences[experiencesIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.selectedExperience =
                                          experiencesItem.type;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          _model.selectedExperience ==
                                                  experiencesItem.type
                                              ? FlutterFlowTheme.of(context)
                                                  .primary900
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: _model.selectedExperience ==
                                                  experiencesItem.type
                                              ? FlutterFlowTheme.of(context)
                                                  .primary200
                                              : FlutterFlowTheme.of(context)
                                                  .darkMode50,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                experiencesItem.type,
                                                'Beginner',
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .paragraphP2Medium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .paragraphP2Medium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                experiencesItem.desc,
                                                'You haven’t tried any type of or a few exercises  and meditation',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .paragraphP3Regular
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle: FlutterFlowTheme
                                                                  .of(context)
                                                              .paragraphP3Regular
                                                              .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .paragraphP3Regular
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 10)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 16)),
                    ),
                  ),
                if (_model.currentPage == 3)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title: 'What is your gender?',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.selectedGender = 'Male';
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        _model.selectedGender == 'Male'
                                            ? FlutterFlowTheme.of(context)
                                                .primary900
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: _model.selectedGender == 'Male'
                                            ? FlutterFlowTheme.of(context)
                                                .primary200
                                            : FlutterFlowTheme.of(context)
                                                .darkMode50,
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: SvgPicture.asset(
                                              'assets/images/male.svg',
                                              width: 48,
                                              height: 48,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            'Male',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .paragraphP2Medium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral50,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .paragraphP2Medium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 10)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.selectedGender = 'Female';
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        _model.selectedGender == 'Female'
                                            ? FlutterFlowTheme.of(context)
                                                .primary900
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: _model.selectedGender == 'Female'
                                            ? FlutterFlowTheme.of(context)
                                                .primary200
                                            : FlutterFlowTheme.of(context)
                                                .darkMode50,
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: SvgPicture.asset(
                                              'assets/images/female.svg',
                                              width: 48,
                                              height: 48,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            'Female',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .paragraphP2Medium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral50,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .paragraphP2Medium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 10)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16)),
                          ),
                        ),
                      ].divide(SizedBox(height: 16)),
                    ),
                  ),
                if (_model.currentPage == 4)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title: 'How long do you workout?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.assessDescModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessDescWidget(
                            desc:
                                'We’ll find exercises that fits well with your schedule.',
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Builder(
                              builder: (context) {
                                final durations =
                                    FFAppState().workoutPeriods.toList();

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1.4,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: durations.length,
                                  itemBuilder: (context, durationsIndex) {
                                    final durationsItem =
                                        durations[durationsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.selectedDuration = durationsItem;
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: valueOrDefault<Color>(
                                            durationsItem ==
                                                    _model.selectedDuration
                                                ? FlutterFlowTheme.of(context)
                                                    .primary900
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: durationsItem ==
                                                    _model.selectedDuration
                                                ? FlutterFlowTheme.of(context)
                                                    .primary200
                                                : FlutterFlowTheme.of(context)
                                                    .darkMode50,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  durationsItem,
                                                  '10-15',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .mobileHeadingH3SemiBold
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle: FlutterFlowTheme
                                                                .of(context)
                                                            .mobileHeadingH3SemiBold
                                                            .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral50,
                                                      fontSize: 28,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle: FlutterFlowTheme
                                                              .of(context)
                                                          .mobileHeadingH3SemiBold
                                                          .fontStyle,
                                                    ),
                                              ),
                                              Text(
                                                'Minutes',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .paragraphP2Medium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .paragraphP2Medium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral50,
                                                      fontSize: 16,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .paragraphP2Medium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 10)),
                                          ),
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
                if (_model.currentPage == 5)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title: 'Where do you exercise?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.assessDescModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessDescWidget(
                            desc:
                                'We’ll find exercises that can be done easily at your place.',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.selectedLoc = 'Home';
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        _model.selectedLoc == 'Home'
                                            ? FlutterFlowTheme.of(context)
                                                .primary900
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.selectedLoc == 'Home'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary200
                                              : FlutterFlowTheme.of(context)
                                                  .darkMode50,
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: SvgPicture.asset(
                                              'assets/images/workout.svg',
                                              width: 48,
                                              height: 48,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            'Home',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .paragraphP2Medium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral50,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .paragraphP2Medium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 10)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.selectedLoc = 'Gym';
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        _model.selectedLoc == 'Gym'
                                            ? FlutterFlowTheme.of(context)
                                                .primary900
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.selectedLoc == 'Gym'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary200
                                              : FlutterFlowTheme.of(context)
                                                  .darkMode50,
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: SvgPicture.asset(
                                              'assets/images/gym-board.svg',
                                              width: 48,
                                              height: 48,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            'Gym',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .paragraphP2Medium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral50,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .paragraphP2Medium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 10)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16)),
                          ),
                        ),
                      ].divide(SizedBox(height: 16)),
                    ),
                  ),
                if (_model.currentPage == 6)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title: 'Which excites you more?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.assessDescModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessDescWidget(
                            desc: 'Tell us about your interests.',
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Builder(
                              builder: (context) {
                                final interests =
                                    FFAppState().Interests.toList();

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: interests.length,
                                  itemBuilder: (context, interestsIndex) {
                                    final interestsItem =
                                        interests[interestsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.selectedInterests
                                            .contains(interestsItem.name)) {
                                          _model.removeFromSelectedInterests(
                                              interestsItem.name);
                                          safeSetState(() {});
                                        } else {
                                          _model.addToSelectedInterests(
                                              interestsItem.name);
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: valueOrDefault<Color>(
                                            _model.selectedInterests.contains(
                                                    interestsItem.name)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary900
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: _model.selectedInterests
                                                    .contains(
                                                        interestsItem.name)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary200
                                                : FlutterFlowTheme.of(context)
                                                    .darkMode50,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: SvgPicture.network(
                                                  valueOrDefault<String>(
                                                    interestsItem.image,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/s-g-fitness-app-1f3bmy/assets/spunx75jg5jy/strength.svg',
                                                  ),
                                                  width: 48,
                                                  height: 48,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  interestsItem.name,
                                                  'Strength',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .paragraphP2Medium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .paragraphP2Medium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral50,
                                                      fontSize: 16,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .paragraphP2Medium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 10)),
                                          ),
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
                if (_model.currentPage == 7)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title: 'Do you have any equipment available?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.assessDescModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessDescWidget(
                            desc:
                                'Don’t worry if you don’t have any. We have plenty of exercises that can be done without equipments.',
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Builder(
                              builder: (context) {
                                final equipments =
                                    FFAppState().Equipments.toList();

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: equipments.length,
                                  itemBuilder: (context, equipmentsIndex) {
                                    final equipmentsItem =
                                        equipments[equipmentsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.selectedEquipments
                                            .contains(equipmentsItem.name)) {
                                          _model.removeFromSelectedEquipments(
                                              equipmentsItem.name);
                                          safeSetState(() {});
                                        } else {
                                          _model.addToSelectedEquipments(
                                              equipmentsItem.name);
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: valueOrDefault<Color>(
                                            _model.selectedEquipments.contains(
                                                    equipmentsItem.name)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary900
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: _model.selectedEquipments
                                                    .contains(
                                                        equipmentsItem.name)
                                                ? FlutterFlowTheme.of(context)
                                                    .primary200
                                                : FlutterFlowTheme.of(context)
                                                    .darkMode50,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: SvgPicture.network(
                                                  valueOrDefault<String>(
                                                    equipmentsItem.image,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/s-g-fitness-app-1f3bmy/assets/spunx75jg5jy/strength.svg',
                                                  ),
                                                  width: 48,
                                                  height: 48,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  equipmentsItem.name,
                                                  'Strength',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .paragraphP2Medium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .paragraphP2Medium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral50,
                                                      fontSize: 16,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .paragraphP2Medium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 10)),
                                          ),
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
                if (_model.currentPage == 8)
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.assessTitleModel8,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessTitleWidget(
                            title: 'How’s your sleep quality?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.assessDescModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: AssessDescWidget(
                            desc: 'Let us know how your sleep is',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Builder(
                            builder: (context) {
                              final sleepQualities =
                                  FFAppState().SleepQualities.toList();

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: sleepQualities.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 16),
                                itemBuilder: (context, sleepQualitiesIndex) {
                                  final sleepQualitiesItem =
                                      sleepQualities[sleepQualitiesIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.selectedSleepQuality =
                                          sleepQualitiesItem.type;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          sleepQualitiesItem.type ==
                                                  _model.selectedSleepQuality
                                              ? FlutterFlowTheme.of(context)
                                                  .primary900
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: sleepQualitiesItem.type ==
                                                  _model.selectedSleepQuality
                                              ? FlutterFlowTheme.of(context)
                                                  .primary200
                                              : FlutterFlowTheme.of(context)
                                                  .darkMode50,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                sleepQualitiesItem.type,
                                                'Excellent',
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .paragraphP2Medium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .paragraphP2Medium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .paragraphP2Medium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                sleepQualitiesItem.desc,
                                                'I’m sleeping more than 8 hours',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .paragraphP3Regular
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle: FlutterFlowTheme
                                                                  .of(context)
                                                              .paragraphP3Regular
                                                              .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .paragraphP3Regular
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 10)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 16)),
                    ),
                  ),
                wrapWithModel(
                  model: _model.primaryButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: PrimaryButtonWidget(
                    btnText: 'Next',
                    isDisable: false,
                    onClick: () async {
                      if (_model.currentPage == 8) {
                        context.goNamed(HomePageWidget.routeName);
                      } else {
                        _model.currentPage =
                            functions.incrValue(_model.currentPage);
                        safeSetState(() {});
                      }
                    },
                  ),
                ),
              ].divide(SizedBox(height: 16)),
            ),
          ),
        ),
      ),
    );
  }
}
