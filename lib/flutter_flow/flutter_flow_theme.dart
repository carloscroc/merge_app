import 'package:flutter/material.dart';

/// Minimal FlutterFlowTheme shim exposing a small set of helpers
/// used by extracted pages. Map values to the app's Theme where possible.
class FlutterFlowTheme {
  final BuildContext _context;
  FlutterFlowTheme._(this._context);

  static FlutterFlowTheme of(BuildContext context) => FlutterFlowTheme._(context);

  Color get primaryBackground => Theme.of(_context).scaffoldBackgroundColor;
  Color get neutral50 => Colors.grey.shade50;
  TextStyle get bodyText1 => Theme.of(_context).textTheme.bodyLarge ?? const TextStyle();
  TextStyle get title1 => Theme.of(_context).textTheme.titleLarge ?? const TextStyle();
}
