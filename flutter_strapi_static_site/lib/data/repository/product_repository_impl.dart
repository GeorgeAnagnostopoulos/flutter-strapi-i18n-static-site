
import 'dart:convert';
import '../service/read_string_assets.dart';
import '../../domain/model/product_model.dart';
import '../../domain/repository/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_impl.g.dart';

@riverpod
class ProductRepositoryImpl extends _$ProductRepositoryImpl implements ProductRepository {

  final collectionType = 'api::product.product';
  
  @override
  Future<List<ProductModel>> build() async {

    try {
      var results = await ref.watch(readStringAssetsProvider.future);
      List<dynamic> entities = jsonDecode('{"data":[$results]}')['data'] as List<dynamic>;
      return Future.value(entities.where((e) => e['type'] == collectionType).map((e) => ProductModel.fromJson(e as Map<String, dynamic>)).toList());
    } catch(e) {
      throw Exception(e);
    }
  }

}