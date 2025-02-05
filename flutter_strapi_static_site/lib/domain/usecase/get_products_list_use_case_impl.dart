

import '../model/product_model.dart';
import './get_products_list_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/product_repository_impl.dart';

part 'get_products_list_use_case_impl.g.dart';

@riverpod
class GetProductsListUseCaseImpl extends _$GetProductsListUseCaseImpl implements GetProductsListUseCase {

  @override
  Future<List<ProductModel>?> build() async {

    final productsRepository = ref.watch(productRepositoryImplProvider);
    return productsRepository.valueOrNull;
  }

}