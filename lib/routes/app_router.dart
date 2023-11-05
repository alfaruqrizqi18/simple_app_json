import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../models/user_model.dart';
import '../presentation/ui/detail/screen/detail_screen.dart';
import '../presentation/ui/home/screen/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  var transition = TransitionsBuilders.fadeIn;
  @override
  List<AutoRoute> get routes {
    return [
      CustomRoute(
        page: HomeRoute.page,
        initial: true,
        transitionsBuilder: transition,
      ),
      CustomRoute(
        page: DetailRoute.page,
        transitionsBuilder: transition,
      ),
    ];
  }
}
