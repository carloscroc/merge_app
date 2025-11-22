import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'onboarding_item_model.dart';
export 'onboarding_item_model.dart';

class OnboardingItemWidget extends StatefulWidget {
  const OnboardingItemWidget({
    super.key,
    required this.item,
  });

  final OnboardingStruct? item;

  @override
  State<OnboardingItemWidget> createState() => _OnboardingItemWidgetState();
}

class _OnboardingItemWidgetState extends State<OnboardingItemWidget> {
  late OnboardingItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.6,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              valueOrDefault<String>(
                widget!.item?.image,
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/s-g-fitness-app-1f3bmy/assets/6nyfvfliopta/onboard3.png',
              ),
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
                    valueOrDefault<String>(
                      widget!.item?.title,
                      'Discover Your Inner Strength',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    valueOrDefault<String>(
                      widget!.item?.description,
                      'Unleash your potential with tailored workouts and achieve your fitness goals. Let\'s get started on your journey to a healthier you.',
                    ),
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
                          color: FlutterFlowTheme.of(context).secondaryText,
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
    );
  }
}
