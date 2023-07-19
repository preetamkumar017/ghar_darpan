import 'package:get/get.dart';
import 'package:ghar_darsan/res/components/image_viewer_menual.dart';
import 'package:ghar_darsan/res/routes/routes_name.dart';
import 'package:ghar_darsan/view/homepage/dashboard_view.dart';
import 'package:ghar_darsan/view/homepage/home_page.dart';
import 'package:ghar_darsan/view/profile/attachments_view.dart';
import 'package:ghar_darsan/view/profile/my_work_stage_view.dart';
import 'package:ghar_darsan/view/login_page/login_view.dart';
import 'package:ghar_darsan/view/profile/addon_view.dart';
import 'package:ghar_darsan/view/profile/facilities_view.dart';
import 'package:ghar_darsan/view/profile/notification_view.dart';
import 'package:ghar_darsan/view/profile/plot_details_view.dart';
import 'package:ghar_darsan/view/profile/plot_gallery_view.dart';
import 'package:ghar_darsan/view/profile/profile_view.dart';
import 'package:ghar_darsan/view/profile/submitted_documents_view.dart';
import 'package:ghar_darsan/view/splash_screen.dart';

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
      name: RouteName.homePage,
      page: () => const HomePage() ,
      transitionDuration: const Duration(milliseconds: 800),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.dashboardView,
      page: () => const DashboardView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.profileView,
      page: () => const ProfileView() ,
      transitionDuration: const Duration(milliseconds: 800),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.addonView,
      page: () => const AddonView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.facilities,
      page: () => const FacilitiesView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.plotDetails,
      page: () => const PlotDetailsView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.submittedDocuments,
      page: () => const SubmittedDocumentsView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.myImageView,
      page: () => const MyImageViewManual(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.myWorkStageView,
      page: () => const MyWorkStageView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.attachments,
      page: () => const AttachmentView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.plotGallery,
      page: () => const PlotGalleryView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.notification,
      page: () => const NotificationView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
  ];

}