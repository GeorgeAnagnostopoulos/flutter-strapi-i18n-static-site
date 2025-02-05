
import 'menu_item.dart';

class AppBarMenu {

  final int id;
  final String locale;
  final List<MenuItem>? menuItems;

  AppBarMenu({required this.id, required this.locale, this.menuItems});

  factory AppBarMenu.fromJson(Map<String, dynamic> json) {

    try {
      var data = json['data'];
      var menuItemsRaw = data['menuItems'] as List<dynamic>;
      List<MenuItem>? menuItems = List<MenuItem>.from(menuItemsRaw.map<MenuItem>((e) => MenuItem.fromJson(e as Map<String, dynamic>)));

      return AppBarMenu(
        id: json['id'] as int,
        locale: data['locale'] as String,
        menuItems: menuItems,
      );
    } catch(e) {
      throw Exception(e);
    }
  }
}