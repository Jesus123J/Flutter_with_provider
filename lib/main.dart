import 'package:flutter/material.dart';
import 'package:flutter_with_provider/routers/page_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "test Web",
      initialRoute: '/home',
      onGenerateRoute: PageRouter.generatorRouter,
    );
  }
}
