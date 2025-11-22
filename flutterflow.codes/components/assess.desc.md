import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'assess_desc_model.dart';
export 'assess_desc_model.dart';

class AssessDescWidget extends StatefulWidget {
  const AssessDescWidget({
    super.key,
    required this.desc,
  });

  final String? desc;

  @override
  State<AssessDescWidget> createState() => _AssessDescWidgetState();
}

class _AssessDescWidgetState extends State<AssessDescWidget> {
  late AssessDescModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessDescModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget!.desc,
        'Tell us your main reasons to join BalancedBeing',
      ),
      style: FlutterFlowTheme.of(context).paragraphP2Regular.override(
            font: GoogleFonts.inter(
              fontWeight: FontWeight.normal,
              fontStyle:
                  FlutterFlowTheme.of(context).paragraphP2Regular.fontStyle,
            ),
            color: FlutterFlowTheme.of(context).secondaryText,
            fontSize: 16,
            letterSpacing: 0.0,
            fontWeight: FontWeight.normal,
            fontStyle:
                FlutterFlowTheme.of(context).paragraphP2Regular.fontStyle,
          ),
    );
  }
}
