import '../../../core/app_export.dart';
import 'page_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<PageItemModel>> pageItemList = Rx([
    PageItemModel(
        stockImage: ImageConstant.imgRectangle57.obs,
        stockText: "Apple stocks just increased\nCheck it out now.".obs,
        timeText: "15min ago".obs),
    PageItemModel(
        stockImage: ImageConstant.imgRectangle58.obs,
        stockText:
            "Check out today’s best inves-\ntor. You’ll learn from him".obs,
        timeText: "3min ago".obs),
    PageItemModel(
        stockImage: ImageConstant.imgRectangle59.obs,
        stockText: "Where do you see yourself\nin the next ages.".obs,
        timeText: "30secs ago".obs)
  ]);
}
