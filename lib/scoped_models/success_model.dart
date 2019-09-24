import 'package:scoped_model_architecture/scoped_models/base_model.dart';

class SuccessModel extends BaseModel {
  String title = "No text yet.";

  Future fetchDuplicatedText(String text) async {
    setState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 2));
    title = "$text $text";
    setState(ViewState.Retrieved);
  }
}