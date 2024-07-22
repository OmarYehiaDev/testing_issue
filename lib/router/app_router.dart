import 'package:auto_route/auto_route.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/main_screen.dart';
import '../screens/otp_screen.dart';
import '../screens/target_screen.dart';

part 'app_router.gr.dart';

final router = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: LoginRoute.page,
        ),
        AutoRoute(page: OtpRoute.page),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
          ],
        ),
        AutoRoute(page: TargetRoute.page),
      ];
}
