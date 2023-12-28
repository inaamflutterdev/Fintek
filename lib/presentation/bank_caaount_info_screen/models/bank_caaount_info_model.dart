import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';

/// This class defines the variables used in the [bank_caaount_info_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BankCaaountInfoModel {
  Rx<List<Userprofilelist1ItemModel>> userprofilelist1ItemList = Rx([
    Userprofilelist1ItemModel(
        bankName: "Bank of Amrica - 0182128xxx".obs,
        userName: "Jonas Macroni".obs)
  ]);
}
