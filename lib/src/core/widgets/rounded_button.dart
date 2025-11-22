import 'package:flutter/cupertino.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const RoundedButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Text(label),
    );
  }
}
