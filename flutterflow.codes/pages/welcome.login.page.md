import '/components/primary_button/primary_button_widget.dart';
import '/components/secondary_btn/secondary_btn_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'welcome_login_page_model.dart';
export 'welcome_login_page_model.dart';

class WelcomeLoginPageWidget extends StatefulWidget {
  const WelcomeLoginPageWidget({super.key});

  static String routeName = 'WelcomeLoginPage';
  static String routePath = '/welcomeLoginPage';

  @override
  State<WelcomeLoginPageWidget> createState() => _WelcomeLoginPageWidgetState();
}

class _WelcomeLoginPageWidgetState extends State<WelcomeLoginPageWidget> {
  late WelcomeLoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeLoginPageModel());
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
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/login.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    fontSize: 24,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                            Text(
                              'Let’s log in to your account',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .paragraphP2Regular
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .paragraphP2Regular
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .paragraphP2Regular
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 32, 16, 0),
                child: wrapWithModel(
                  model: _model.primaryButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: PrimaryButtonWidget(
                    btnText: 'Login with email',
                    onClick: () async {
                      context.pushNamed(LoginPageWidget.routeName);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: wrapWithModel(
                  model: _model.secondaryBtnModel,
                  updateCallback: () => safeSetState(() {}),
                  child: SecondaryBtnWidget(
                    btnText: 'Sign Up',
                    onClick: () async {
                      context.goNamed(WelcomeSignUpPageWidget.routeName);
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
