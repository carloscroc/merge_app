import 'package:flutter/material.dart';

/// Placeholder for meditative vertical item used in lists.
class ItemMeditiveVerticalWidget extends StatelessWidget {
  const ItemMeditiveVerticalWidget({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(width: 56, height: 56, color: Colors.grey.shade300),
          const SizedBox(width: 12),
          Expanded(child: Text(title ?? 'Meditation', style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
