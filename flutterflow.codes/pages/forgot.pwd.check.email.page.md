import '/components/primary_button/primary_button_widget.dart';
import '/components/secondary_btn/secondary_btn_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'forgot_pwd_check_email_page_model.dart';
export 'forgot_pwd_check_email_page_model.dart';

class ForgotPwdCheckEmailPageWidget extends StatefulWidget {
  const ForgotPwdCheckEmailPageWidget({super.key});

  static String routeName = 'ForgotPwdCheckEmailPage';
  static String routePath = '/forgotPwdCheckEmailPage';

  @override
  State<ForgotPwdCheckEmailPageWidget> createState() =>
      _ForgotPwdCheckEmailPageWidgetState();
}

class _ForgotPwdCheckEmailPageWidgetState
    extends State<ForgotPwdCheckEmailPageWidget> {
  late ForgotPwdCheckEmailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPwdCheckEmailPageModel());
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
              context.pop();
            },
          ),
          actions: [],
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/images/email-notification.png',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'Check your email',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                        fontSize: 26,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                ),
                Text(
                  'We sent a link to reset your password to john@gmail.com',
                  textAlign: TextAlign.center,
                  style:
                      FlutterFlowTheme.of(context).paragraphP2Regular.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .paragraphP2Regular
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .paragraphP2Regular
                                .fontStyle,
                          ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: wrapWithModel(
                    model: _model.primaryButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PrimaryButtonWidget(
                      btnText: 'Go to mail app',
                      onClick: () async {},
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(LoginPageWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.secondaryBtnModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SecondaryBtnWidget(
                      btnText: 'Login',
                      onClick: () async {
                        context.goNamed(WelcomeLoginPageWidget.routeName);
                      },
                    ),
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
