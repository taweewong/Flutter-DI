# Flutter-DI
Learning Flutter DI using [GetIt](https://pub.dev/packages/get_it), [Injectable](https://pub.dev/packages/injectable), and also using [Riverpod](https://riverpod.dev/) for state management.

## Overview
The content contains examples of using only GetIt and using Injectable to generate dependencies. 
Both are implemented on Riverpod and MVVM architecture.

On top of that, this will contain the example of using only provider for dependency injection, not using GetIt. And it will be examples of unit testing.

## Lesson Learned 
Using GetIt and Injectable with Riverpod is possible, but it hard to do a test.
Because Riverpod class like Notifier and we should not send dependencies via constructor. If using GetIt to inject dependencies directly into the class, it will be very hard to pass a mock.

So the Riverpod should use Provider as a dependency injection because Riverpod provide ability to mock the Provider when do unit testing.

## References
* https://stackoverflow.com/questions/78055149/how-to-pass-dependency-to-asyncnotifier-with-the-new-riverpod-syntax
