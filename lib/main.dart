import 'package:flutter/material.dart';
import 'package:flutter_di/app_module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'getit_manual/ui/getit_manual_screen.dart';

void main() {
  setupGetIt();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GetItManualScreen(),
    );
  }
}
