import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [contact_info_edit_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactInfoEditModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        name: "Name".obs,
        warrenBuffet: "Warren Buffet".obs,
        change: "Change".obs),
    UserprofilelistItemModel(
        name: "Birthdate".obs,
        warrenBuffet: "05 November 1993".obs,
        change: "Change".obs),
    UserprofilelistItemModel(
        name: "Gender".obs, warrenBuffet: "Male".obs, change: "Change".obs)
  ]);
}
