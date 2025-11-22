import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'primary_button_model.dart';
export 'primary_button_model.dart';

class PrimaryButtonWidget extends StatefulWidget {
  const PrimaryButtonWidget({
    super.key,
    required this.btnText,
    bool? isDisable,
    this.onClick,
  }) : this.isDisable = isDisable ?? false;

  final String? btnText;
  final bool isDisable;
  final Future Function()? onClick;

  @override
  State<PrimaryButtonWidget> createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  late PrimaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: widget!.isDisable
          ? null
          : () async {
              await widget.onClick?.call();
            },
      text: widget!.btnText!,
      options: FFButtonOptions(
        width: double.infinity,
        height: 54,
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                fontStyle: FontStyle.italic,
              ),
              color: FlutterFlowTheme.of(context).neutral800,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
              fontStyle: FontStyle.italic,
            ),
        elevation: 0,
        borderRadius: BorderRadius.circular(8),
        disabledColor: FlutterFlowTheme.of(context).secondaryBackground,
        disabledTextColor: FlutterFlowTheme.of(context).neutral400,
      ),
    );
  }
}
