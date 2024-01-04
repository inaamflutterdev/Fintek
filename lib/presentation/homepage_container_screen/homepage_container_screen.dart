import 'controller/homepage_container_controller.dart';
import 'package:fintek/core/app_export.dart';
import 'package:fintek/presentation/homepage_page/homepage_page.dart';
import 'package:fintek/presentation/profile_screeen_page/profile_screeen_page.dart';
import 'package:fintek/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomepageContainerScreen extends GetWidget<HomepageContainerController> {
  const HomepageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homepagePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Product:
        return "/";
      case BottomBarEnum.Transaction:
        return "/";
      case BottomBarEnum.Account:
        return AppRoutes.profileScreeenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.profileScreeenPage:
        return ProfileScreeenPage();
      default:
        return DefaultWidget();
    }
  }
}
