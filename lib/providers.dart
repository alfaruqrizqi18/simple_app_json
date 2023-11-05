// ignore_for_file: depend_on_referenced_packages

import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_json/presentation/ui/home/provider/home_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => HomeProvider()),
];
