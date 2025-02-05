
import '../model/service_model.dart';

abstract interface class ServiceRepository {

  Future<List<ServiceModel>> build();
}