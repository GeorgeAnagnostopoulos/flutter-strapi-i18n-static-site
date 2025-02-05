
import '../model/product_model.dart';

abstract interface class ProductRepository {

  Future<List<ProductModel>> build();
}