
import '../../domain/model/app_bar_menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/usecase/get_app_menu_impl.dart';
part 'layout_page_view_model.g.dart';

@riverpod
class LayoutPageViewModel extends _$LayoutPageViewModel {

  @override
  Future<AppBarMenu> build(final String locale) async {
    final appBarMenu = ref.watch(getAppMenuUseCaseImplProvider).valueOrNull;
    return appBarMenu!.firstWhere((a) => a.locale == locale);
  }
}