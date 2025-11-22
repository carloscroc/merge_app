import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'item_featured_workouts_model.dart';
export 'item_featured_workouts_model.dart';

class ItemFeaturedWorkoutsWidget extends StatefulWidget {
  const ItemFeaturedWorkoutsWidget({
    super.key,
    this.imageUrl,
    required this.onTap,
    required this.name,
  });

  final String? imageUrl;
  final Future Function()? onTap;
  final String? name;

  @override
  State<ItemFeaturedWorkoutsWidget> createState() =>
      _ItemFeaturedWorkoutsWidgetState();
}

class _ItemFeaturedWorkoutsWidgetState
    extends State<ItemFeaturedWorkoutsWidget> {
  late ItemFeaturedWorkoutsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemFeaturedWorkoutsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.onTap?.call();
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                fadeInDuration: Duration(milliseconds: 500),
                fadeOutDuration: Duration(milliseconds: 500),
                imageUrl: widget!.imageUrl != null && widget!.imageUrl != ''
                    ? widget!.imageUrl!
                    : 'https://images.unsplash.com/photo-1512438248247-f0f2a5a8b7f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxtaW5kJTIwfGVufDB8fHx8MTc1NzkyMTU0OXww&ixlib=rb-4.1.0&q=80&w=1080',
                width: 250,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              child: Text(
                valueOrDefault<String>(
                  widget!.name,
                  'NA',
                ),
                maxLines: 2,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 16,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ].divide(SizedBox(height: 16)),
        ),
      ),
    );
  }
}
