

import '../model/service_model.dart';

abstract interface class GetServicesListUseCase {

  Future<List<ServiceModel>?> build();
}