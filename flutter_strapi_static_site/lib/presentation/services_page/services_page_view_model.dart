
import '../../domain/model/service_model.dart';
import '../../domain/usecase/get_services_list_use_case_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_page_view_model.g.dart';

@riverpod
class ServicesPageViewModel extends _$ServicesPageViewModel {

  @override
  Future<List<ServiceModel>?> build(final String locale) async {

    final services = ref.watch(getServicesListUseCaseImplProvider).valueOrNull;
    return services!.where((it) => it.locale == locale).toList();
  }
}