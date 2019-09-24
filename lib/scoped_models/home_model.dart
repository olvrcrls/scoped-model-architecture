import 'package:scoped_model_architecture/enums/view_states.dart';
import 'package:scoped_model_architecture/service_locator.dart';
import 'package:scoped_model_architecture/services/storage_service.dart';
import 'package:scoped_model_architecture/scoped_models/base_model.dart';
// Model for the Home view.
class HomeModel extends BaseModel {
  StorageService storageService = locator<StorageService>();
  String title = "Home Model.";

  // This will change the title to "Saving Data.."
  // after 2 seconds of delay it will change to
  // "Data saved.."
  Future saveData() async {
    setState(ViewState.Busy);
    title = "Saving Data...";
    await storageService.saveData();
    title = "Data saved.";
    setState(ViewState.Retrieved);
  }
}