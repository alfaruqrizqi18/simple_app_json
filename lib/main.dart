import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:simple_app_json/app.dart';

import 'presentation/ui/home/provider/home_provider.dart';

import 'core/injection/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MyApp(),
    ),
  );
}
