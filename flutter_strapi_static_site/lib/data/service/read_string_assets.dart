
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'read_string_assets.g.dart';

@riverpod
class ReadStringAssets extends _$ReadStringAssets {

  final String entitiesFilePath = 'assets/contents/entities_00001.jsonl';

  @override
  Future<String> build() async {
    try {
      String entities = await rootBundle.loadString(entitiesFilePath);
      return entities = entities.replaceAll("\n", ",");
    } catch (e) {
      throw Exception(e);
    }
  }
}