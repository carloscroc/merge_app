import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'assess_title_model.dart';
export 'assess_title_model.dart';

class AssessTitleWidget extends StatefulWidget {
  const AssessTitleWidget({
    super.key,
    String? title,
  }) : this.title = title ?? 'What are your fitness goals?';

  final String title;

  @override
  State<AssessTitleWidget> createState() => _AssessTitleWidgetState();
}

class _AssessTitleWidgetState extends State<AssessTitleWidget> {
  late AssessTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessTitleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget!.title,
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
    );
  }
}
