import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vitalia/weight/application/cubit/weight_cubit.dart';
import 'package:vitalia/weight/application/weight_repository.dart';
import 'package:vitalia/weight/data/weight_api.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  _setupUtils();
  _setupData();
  _setupRepositories();
  _setupCubits();
}

GetIt _setupUtils() {
  return locator..registerFactory(() => Dio(BaseOptions(baseUrl: 'http://www.vitalia.pl')));
}

GetIt _setupData() {
  return locator..registerFactory(() => WeightApi(locator.get<Dio>()));
}

GetIt _setupRepositories() {
  return locator..registerFactory(() => WeightRepository(locator.get<WeightApi>()));
}

GetIt _setupCubits() {
  return locator..registerFactory(() => WeightCubit(locator.get<WeightRepository>()));
}
