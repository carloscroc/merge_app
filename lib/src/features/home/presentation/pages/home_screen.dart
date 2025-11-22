import 'package:flutter/cupertino.dart';
import '../widgets/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Home')),
      child: const Center(child: HomeBanner()),
    );
  }
}
