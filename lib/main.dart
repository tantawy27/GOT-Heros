import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(GotHeros(appRouter: AppRouter()));
}

class GotHeros extends StatelessWidget {
  final AppRouter appRouter;
  const GotHeros({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
