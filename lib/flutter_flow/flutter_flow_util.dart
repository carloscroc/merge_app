import 'package:flutter/widgets.dart';

/// Minimal createModel shim used by extracted FlutterFlow pages.
T createModel<T>(BuildContext context, T Function() creator) {
  return creator();
}

/// Lightweight wrapper that provides a ChangeNotifier-backed scope
/// for child widgets. This is intentionally minimal and avoids
/// introducing provider package as a dependency.
Widget wrapWithModel({
  required ChangeNotifier model,
  VoidCallback? updateCallback,
  required Widget child,
}) {
  return _WrapWithModel(
    model: model,
    updateCallback: updateCallback,
    child: child,
  );
}

class _WrapWithModel extends StatefulWidget {
  final ChangeNotifier model;
  final Widget child;
  final VoidCallback? updateCallback;
  const _WrapWithModel({required this.model, required this.child, this.updateCallback});
  @override
  State<_WrapWithModel> createState() => _WrapWithModelState();
}

class _WrapWithModelState extends State<_WrapWithModel> {
  @override
  void initState() {
    super.initState();
    widget.model.addListener(_onModelChange);
  }

  void _onModelChange() {
    widget.updateCallback?.call();
    // Rebuild wrapper so descendant builders see updated state if they
    // read from the model via inherited/other means.
    setState(() {});
  }

  @override
  void dispose() {
    try {
      widget.model.removeListener(_onModelChange);
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

/// A no-op safeSetState used in extracted code patterns. It simply
/// runs the callback; pages that depend on `mounted`-aware semantics
/// should pass stateful callbacks instead.
void safeSetState(VoidCallback fn) {
  try {
    fn();
  } catch (_) {}
}

/// Minimal global app state singleton used by some extracted pages.
class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();
  factory FFAppState() => _instance;
  FFAppState._internal();

  final Map<String, dynamic> _data = {};

  dynamic operator [](String key) => _data[key];
  void operator []=(String key, dynamic value) {
    _data[key] = value;
    notifyListeners();
  }
}
