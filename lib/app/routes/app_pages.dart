import 'package:get/get.dart';

import '../modules/all_news/bindings/all_news_binding.dart';
import '../modules/all_news/views/all_news_view.dart';
import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ALL_NEWS,
        page: () => const AllNewsView(),
        binding: AllNewsBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.HISTORY,
        page: () => const HistoryView(),
        binding: HistoryBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.PROFILE,
        page: () => const ProfileView(),
        binding: ProfileBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.DETAIL,
        page: () => const DetailView(),
        binding: DetailBinding(),
        transition: Transition.noTransition),
  ];
}
