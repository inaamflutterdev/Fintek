import 'package:fintek/presentation/splash_screen/splash_screen.dart';
import 'package:fintek/presentation/splash_screen/binding/splash_binding.dart';
import 'package:fintek/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:fintek/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:fintek/presentation/creatte_account_screen/creatte_account_screen.dart';
import 'package:fintek/presentation/creatte_account_screen/binding/creatte_account_binding.dart';
import 'package:fintek/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:fintek/presentation/homepage_container_screen/binding/homepage_container_binding.dart';
import 'package:fintek/presentation/contact_info_edit_screen/contact_info_edit_screen.dart';
import 'package:fintek/presentation/contact_info_edit_screen/binding/contact_info_edit_binding.dart';
import 'package:fintek/presentation/notification_screen/notification_screen.dart';
import 'package:fintek/presentation/notification_screen/binding/notification_binding.dart';
import 'package:fintek/presentation/bank_caaount_info_screen/bank_caaount_info_screen.dart';
import 'package:fintek/presentation/bank_caaount_info_screen/binding/bank_caaount_info_binding.dart';
import 'package:fintek/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:fintek/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String creatteAccountScreen = '/creatte_account_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String profileScreeenPage = '/profile_screeen_page';

  static const String contactInfoEditScreen = '/contact_info_edit_screen';

  static const String notificationScreen = '/notification_screen';

  static const String bankCaaountInfoScreen = '/bank_caaount_info_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: creatteAccountScreen,
      page: () => CreatteAccountScreen(),
      bindings: [
        CreatteAccountBinding(),
      ],
    ),
    GetPage(
      name: homepageContainerScreen,
      page: () => HomepageContainerScreen(),
      bindings: [
        HomepageContainerBinding(),
      ],
    ),
    GetPage(
      name: contactInfoEditScreen,
      page: () => ContactInfoEditScreen(),
      bindings: [
        ContactInfoEditBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: bankCaaountInfoScreen,
      page: () => BankCaaountInfoScreen(),
      bindings: [
        BankCaaountInfoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
