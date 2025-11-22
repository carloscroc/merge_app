import 'package:flutter/cupertino.dart';
import 'src/routes/app_router.dart';
import 'src/core/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter UI Prototype',
      theme: const CupertinoThemeData(primaryColor: CupertinoColors.activeBlue),
      initialRoute: Routes.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
