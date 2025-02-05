

import '../../data/repository/app_menu_repository_impl.dart';
import '../model/app_bar_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_app_menu.dart';

part 'get_app_menu_impl.g.dart';

@riverpod
final class GetAppMenuUseCaseImpl extends _$GetAppMenuUseCaseImpl implements GetAppMenuUseCase {

  @override
  Future<List<AppBarMenu>> build() async {
    final repository = ref.watch(appMenuRepositoryImplProvider);
    return repository.valueOrNull ?? [];
  }

}