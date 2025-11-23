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

  // Per-item sub-model collections used by `wrapWithModel` style children.
  // These are lightweight ChangeNotifiers that the page will own and dispose.
  final List<ItemModel> itemFeaturedWorkoutsModels = [];
  final List<ItemModel> itemMeditiveVerticalModels = [];

  /// Call from the page's initState to initialize controllers/resources.
  void initState(BuildContext context) {
    searchController ??= TextEditingController();
    searchFocusNode ??= FocusNode();
  }

  /// Ensure there are at least [count] featured-workout item models and
  /// return the backing list. UI code should call this before indexing.
  List<ItemModel> ensureFeaturedWorkoutsModels(int count) {
    while (itemFeaturedWorkoutsModels.length < count) {
      itemFeaturedWorkoutsModels.add(ItemModel());
    }
    return itemFeaturedWorkoutsModels;
  }

  /// Ensure there are at least [count] meditative-vertical item models and
  /// return the backing list.
  List<ItemModel> ensureMeditiveVerticalModels(int count) {
    while (itemMeditiveVerticalModels.length < count) {
      itemMeditiveVerticalModels.add(ItemModel());
    }
    return itemMeditiveVerticalModels;
  }

  /// Dispose controllers/resources and any owned sub-models when page is removed.
  @override
  void dispose() {
    for (final m in itemFeaturedWorkoutsModels) {
      try {
        m.dispose();
      } catch (_) {}
    }
    itemFeaturedWorkoutsModels.clear();

    for (final m in itemMeditiveVerticalModels) {
      try {
        m.dispose();
      } catch (_) {}
    }
    itemMeditiveVerticalModels.clear();

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

/// Lightweight per-item model used by child widgets.
class ItemModel extends ChangeNotifier {
  ItemModel();

  // Placeholder for item-local state, e.g. favorited, expanded, etc.
  bool isSelected = false;

  void toggleSelected() {
    isSelected = !isSelected;
    notifyListeners();
  }
}
