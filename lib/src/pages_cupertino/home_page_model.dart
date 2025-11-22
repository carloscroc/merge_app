import 'package:flutter/material.dart';

/// Minimal page model skeleton for `HomePage`.
/// Expand with controllers, streams and state as the UI is implemented.
class HomePageModel extends ChangeNotifier {
  HomePageModel();

  // Example controllers and focus nodes used by page widgets
  TextEditingController? searchController;
  FocusNode? searchFocusNode;

  // Loading / UI state
  bool isLoading = false;

  /// Call from the page's initState to initialize controllers/resources.
  void initState(BuildContext context) {
    searchController ??= TextEditingController();
    searchFocusNode ??= FocusNode();
  }

  /// Dispose controllers/resources when page is removed.
  @override
  void dispose() {
    searchController?.dispose();
    searchFocusNode?.dispose();
    super.dispose();
  }

  /// Example helper to set loading state.
  void setLoading(bool v) {
    if (isLoading == v) return;
    isLoading = v;
    notifyListeners();
  }
}
