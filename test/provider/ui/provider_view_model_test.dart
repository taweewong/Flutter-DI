import 'dart:async';
import 'dart:core';

import 'package:flutter_di/provider/model/provider_response.dart';
import 'package:flutter_di/provider/repository/provider_repository.dart';
import 'package:flutter_di/provider/ui/provider_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock/FakeProviderRepository.dart';

void main() {
  test("Should get text from service correctly", () async {
    // Override ProviderRepositoryImpl with FakeProviderRepository
    final container = ProviderContainer(
      overrides: [
        providerRepositoryProvider.overrideWithValue(FakeProviderRepository()),
      ],
    );

    // Create emittedStates to collect value changes from Notifier
    // Completer use to determine if state changing is finish
    // If use AsyncNotifier, completer is not require in this case
    final emittedStates = <ProviderResponse>[];
    final completer = Completer<void>();

    // Listen to state changes
    final listener = container.listen<ProviderResponse>(
      providerViewModelProvider,
      (previous, next) {
        emittedStates.add(next);

        // If value has changed 2 times, tell completer that the process is completed
        if (emittedStates.length == 2) {
          completer.complete();
        }
      },
      fireImmediately: true,
    );

    // Wait for completer.complete() is called
    await completer.future;

    listener.close();

    // Then
    expect(emittedStates.first.text, 'Loading');
    expect(emittedStates.last.text, 'This is text for unit test');
  });
}
