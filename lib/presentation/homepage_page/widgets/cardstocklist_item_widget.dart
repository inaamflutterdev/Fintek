import '../controller/homepage_controller.dart';
import '../models/cardstocklist_item_model.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardstocklistItemWidget extends StatelessWidget {
  CardstocklistItemWidget(
    this.cardstocklistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardstocklistItemModel cardstocklistItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Container(
          height: 170.v,
          width: 134.h,
          decoration: AppDecoration.gradientYellowToYellow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: cardstocklistItemModelObj.image!.value,
                  height: 159.v,
                  width: 134.h,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 21.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          cardstocklistItemModelObj.stockLabel!.value,
                          style: CustomTextStyles.titleMediumWhiteA70001_1,
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Obx(
                          () => Text(
                            cardstocklistItemModelObj.priceLabel!.value,
                            style:
                                CustomTextStyles.labelLargeSFProTextWhiteA70001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
