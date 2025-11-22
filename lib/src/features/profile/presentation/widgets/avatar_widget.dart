import 'package:flutter/cupertino.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: CupertinoColors.systemGrey5),
      child: const Center(child: Icon(CupertinoIcons.person, size: 40)),
    );
  }
}
