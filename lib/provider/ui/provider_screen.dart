import 'package:flutter/material.dart';
import 'package:flutter_di/getit_manual/model/getit_manual_response.dart';
import 'package:flutter_di/getit_manual/ui/getit_manual_view_model.dart';
import 'package:flutter_di/provider/model/provider_response.dart';
import 'package:flutter_di/provider/ui/provider_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderScreen extends ConsumerStatefulWidget {

  const ProviderScreen({super.key});

  @override
  ConsumerState<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends ConsumerState<ProviderScreen> {

  @override
  Widget build(BuildContext context) {
    ProviderResponse response = ref.watch(providerViewModelProvider);

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
