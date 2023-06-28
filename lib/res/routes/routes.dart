import 'package:get/get.dart';
import 'package:ghar_darpan/res/routes/routes_name.dart';
import 'package:ghar_darpan/view/dashboard_view.dart';
import 'package:ghar_darpan/view/login_page/login_view.dart';
import 'package:ghar_darpan/view/splash_screen.dart';

class AppRoutes {

  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.loginView,
      page: () => const LoginView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.dashboardView,
      page: () => const DashboardView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
  ];

}