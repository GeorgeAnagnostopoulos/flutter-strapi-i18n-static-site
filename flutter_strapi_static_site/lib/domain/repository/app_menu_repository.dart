
import '../model/app_bar_menu.dart';

abstract interface class AppMenuRepository {
  Future<List<AppBarMenu>> build();
}