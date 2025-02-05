
import '../model/product_model.dart';

abstract interface class GetProductsListUseCase {

  Future<List<ProductModel>?> build();
}