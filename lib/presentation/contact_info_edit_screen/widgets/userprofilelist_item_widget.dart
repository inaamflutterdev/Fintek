import '../controller/contact_info_edit_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<ContactInfoEditController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofilelistItemModelObj.name!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Obx(
                    () => Text(
                      userprofilelistItemModelObj.warrenBuffet!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 17.v,
                  bottom: 12.v,
                ),
                child: Obx(
                  () => Text(
                    userprofilelistItemModelObj.change!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          height: 1.v,
          width: 354.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 354.h,
                    child: Divider(),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 354.h,
                    child: Divider(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
