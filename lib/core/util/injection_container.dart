import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/template/app/bloc/bloc.dart';

//sl = service_locator
final sl = GetIt.instance;

Future init() async {
  //! External
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());

  //! Features - Number Trivia
  //Bloc
  sl.registerFactory(() => BlocEg());
}
