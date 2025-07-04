import 'package:flutter/material.dart';
import 'package:flutter_di/app_module.dart';
import 'package:flutter_di/provider/ui/provider_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'getit_with_injectable/ui/injectable_screen.dart';

void main() {
  // for getit_manual package
  setupGetIt();

  // for getit_with_injectable package
  configureDependencies();

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
      // home: const GetItManualScreen(),
      // home: const InjectableScreen(),
      home: const ProviderScreen(),
    );
  }
}
