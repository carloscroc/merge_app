import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'secondary_btn_model.dart';
export 'secondary_btn_model.dart';

class SecondaryBtnWidget extends StatefulWidget {
  const SecondaryBtnWidget({
    super.key,
    required this.btnText,
    this.onClick,
  });

  final String? btnText;
  final Future Function()? onClick;

  @override
  State<SecondaryBtnWidget> createState() => _SecondaryBtnWidgetState();
}

class _SecondaryBtnWidgetState extends State<SecondaryBtnWidget> {
  late SecondaryBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondaryBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.onClick?.call();
      },
      text: widget!.btnText!,
      options: FFButtonOptions(
        width: double.infinity,
        height: 54,
        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        color: FlutterFlowTheme.of(context).darkMode600,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                fontStyle: FontStyle.italic,
              ),
              color: FlutterFlowTheme.of(context).neutral50,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
              fontStyle: FontStyle.italic,
            ),
        elevation: 0,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
