import "package:get_it/get_it.dart";
import "package:scoped_model_architecture/scoped_models/home_model.dart";
import 'package:scoped_model_architecture/scoped_models/success_model.dart';
import 'package:scoped_model_architecture/scoped_models/error_model.dart';
import "package:scoped_model_architecture/services/storage_service.dart";
GetIt locator = GetIt();

void setupLocator () {
  // Register services & Models

  // Registering the model as a factor so when everytime
  // a home model is requested then a new instance will
  // return.
  locator.registerLazySingleton<StorageService>(() => StorageService());
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());
  locator.registerFactory<ErrorModel>(() => ErrorModel());
}