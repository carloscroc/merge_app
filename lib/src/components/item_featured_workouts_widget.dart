import 'package:flutter/material.dart';

/// Placeholder for featured workout item used in the home page.
class ItemFeaturedWorkoutsWidget extends StatelessWidget {
  const ItemFeaturedWorkoutsWidget({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 180,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(title ?? 'Featured', style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
