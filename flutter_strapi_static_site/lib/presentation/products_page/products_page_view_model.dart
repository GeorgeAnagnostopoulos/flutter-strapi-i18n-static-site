
import '../../domain/model/product_model.dart';
import '../../domain/usecase/get_products_list_use_case_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_page_view_model.g.dart';

@riverpod
class ProductsPageViewModel extends _$ProductsPageViewModel {

  @override
  Future<List<ProductModel>?> build(final String locale) async {
    final products = ref.watch(getProductsListUseCaseImplProvider).valueOrNull;
    return products!.where((e) => e.locale == locale).toList();
  }
}