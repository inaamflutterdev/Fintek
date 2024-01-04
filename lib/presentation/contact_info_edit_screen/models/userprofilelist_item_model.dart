import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.name,
    this.warrenBuffet,
    this.change,
    this.id,
  }) {
    name = name ?? Rx("Name");
    warrenBuffet = warrenBuffet ?? Rx("Warren Buffet");
    change = change ?? Rx("Change");
    id = id ?? Rx("");
  }

  Rx<String>? name;

  Rx<String>? warrenBuffet;

  Rx<String>? change;

  Rx<String>? id;
}
