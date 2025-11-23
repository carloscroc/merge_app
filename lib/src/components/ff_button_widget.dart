import 'package:flutter/material.dart';

/// Minimal replacement for FlutterFlow button used in the UI.
class FFButtonWidget extends StatelessWidget {
  const FFButtonWidget({super.key, required this.onPressed, required this.label});

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(label, style: Theme.of(context).textTheme.labelLarge),
      ),
    );
  }
}
