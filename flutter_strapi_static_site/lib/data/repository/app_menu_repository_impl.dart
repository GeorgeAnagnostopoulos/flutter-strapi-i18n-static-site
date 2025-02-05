
import 'dart:convert';
import '../service/read_string_assets.dart';
import '../../domain/model/app_bar_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/repository/app_menu_repository.dart';

part 'app_menu_repository_impl.g.dart';

@riverpod
class AppMenuRepositoryImpl extends _$AppMenuRepositoryImpl implements AppMenuRepository {

  final collectionType = "api::app-menu.app-menu";

  @override
  Future<List<AppBarMenu>> build() async {

    // List<AppBarMenu> appBarMenuList = [];

    try {
      // String contents = await rootBundle.loadString(
      //     'assets/contents/entities_00001.jsonl');

      var assetStrings = await ref.watch(readStringAssetsProvider.future);
      // var results = contents; //.toString().replaceAll("\n", ",");
      // print(results);

      // results = '{"data":[${results.substring(0, results.lastIndexOf(","))}]}';
      List<dynamic> results = jsonDecode('{"data":[$assetStrings]}')["data"] as List<dynamic>;

      var appbarMenu = results.where((e) {
        return e['type'] == collectionType;
      });

      var appBarMenu = appbarMenu.map((e) => AppBarMenu.fromJson(e as Map<String, dynamic>)).toList();
      return Future.value(List<AppBarMenu>.from(appBarMenu));

    } catch(e) {
      throw Exception(e);
    }
  }
}