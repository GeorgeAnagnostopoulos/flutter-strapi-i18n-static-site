
import '../../data/repository/service_repository_impl.dart';
import '../model/service_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_services_list_use_case.dart';

part 'get_services_list_use_case_impl.g.dart';

@riverpod
class GetServicesListUseCaseImpl extends _$GetServicesListUseCaseImpl implements GetServicesListUseCase {

  @override
  Future<List<ServiceModel>?> build() async {
    final servicesRepository = ref.watch(serviceRepositoryImplProvider);
    return servicesRepository.valueOrNull;
  }
}