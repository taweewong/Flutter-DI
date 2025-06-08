import 'package:flutter/material.dart';
import 'package:flutter_di/getit_manual/model/getit_manual_response.dart';
import 'package:flutter_di/getit_manual/ui/getit_manual_view_model.dart';
import 'package:flutter_di/getit_with_injectable/model/injectable_response.dart';
import 'package:flutter_di/getit_with_injectable/ui/injectable_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InjectableScreen extends ConsumerStatefulWidget {

  const InjectableScreen({super.key});

  @override
  ConsumerState<InjectableScreen> createState() => _InjectableState();
}

class _InjectableState extends ConsumerState<InjectableScreen> {

  @override
  Widget build(BuildContext context) {
    InjectableResponse response = ref.watch(injectableViewModelProvider);

    final String text = response.text ?? "Response is null";

    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
