import '../model/getit_manual_response.dart';

abstract class GetItManualService {
  Future<GetItManualResponse> getAsyncText();
}

class GetItManualServiceImpl extends GetItManualService {

  @override
  Future<GetItManualResponse> getAsyncText() async {
    await Future.delayed(Duration(seconds: 2));
    return GetItManualResponse(
      text: "This is content from response"
    );
  }
}