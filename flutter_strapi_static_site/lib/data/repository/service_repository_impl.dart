import 'dart:convert';
import '../service/read_string_assets.dart';
import '../../domain/model/service_model.dart';
import '../../domain/repository/service_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_repository_impl.g.dart';

@riverpod
class ServiceRepositoryImpl extends _$ServiceRepositoryImpl
    implements ServiceRepository {

  final String collectionType = "api::service.service";

  @override
  Future<List<ServiceModel>> build() async {
    try {
      var results = await ref.watch(readStringAssetsProvider.future);
      List<dynamic> entities =
          jsonDecode('{"data":[$results]}')['data'] as List<dynamic>;

      entities = entities
          .where((e) => e['type'] == collectionType)
          .toList();


      return Future.value(entities
          .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList());

    } catch (e) {
      throw Exception(e);
    }
  }
}
