import 'package:flutter/material.dart';
import 'package:flutter_di/getit_manual/model/getit_manual_response.dart';
import 'package:flutter_di/getit_manual/ui/getit_manual_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetItManualScreen extends ConsumerStatefulWidget {

  const GetItManualScreen({super.key});

  @override
  ConsumerState<GetItManualScreen> createState() => _GetItManualScreenState();
}

class _GetItManualScreenState extends ConsumerState<GetItManualScreen> {

  @override
  Widget build(BuildContext context) {
    GetItManualResponse response = ref.watch(getItManualViewModelProvider);

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
