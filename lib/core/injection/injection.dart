import 'package:get_it/get_it.dart';
import 'package:simple_app_json/routes/app_router.dart';


final sl = GetIt.I;

Future<void> init() async {
  sl.registerSingleton(AppRouter());
}
