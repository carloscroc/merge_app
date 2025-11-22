import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'item_workout_list_model.dart';
export 'item_workout_list_model.dart';

class ItemWorkoutListWidget extends StatefulWidget {
  const ItemWorkoutListWidget({
    super.key,
    required this.name,
    required this.photoUrl,
  });

  final String? name;
  final String? photoUrl;

  @override
  State<ItemWorkoutListWidget> createState() => _ItemWorkoutListWidgetState();
}

class _ItemWorkoutListWidgetState extends State<ItemWorkoutListWidget> {
  late ItemWorkoutListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemWorkoutListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            fadeInDuration: Duration(milliseconds: 500),
            fadeOutDuration: Duration(milliseconds: 500),
            imageUrl: widget!.photoUrl!,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.name,
            'NA',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                fontSize: 18,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ].divide(SizedBox(height: 16)),
    );
  }
}
