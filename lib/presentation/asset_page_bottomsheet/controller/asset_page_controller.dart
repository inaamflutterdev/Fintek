import 'package:fintek/core/app_export.dart';
import 'package:fintek/presentation/asset_page_bottomsheet/models/asset_page_model.dart';

/// A controller class for the AssetPageBottomsheet.
///
/// This class manages the state of the AssetPageBottomsheet, including the
/// current assetPageModelObj
class AssetPageController extends GetxController {
  Rx<AssetPageModel> assetPageModelObj = AssetPageModel().obs;
}
