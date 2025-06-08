import 'package:injectable/injectable.dart';

import '../model/injectable_response.dart';

abstract class InjectableService {
  Future<InjectableResponse> getAsyncText();
}

@Singleton(as: InjectableService)
class InjectableServiceImpl extends InjectableService {

  @override
  Future<InjectableResponse> getAsyncText() async {
    await Future.delayed(Duration(seconds: 2));
    return InjectableResponse(
      text: "This is content from response (using injectable)"
    );
  }
}