import 'package:get/get.dart';
import 'package:getx_demo/pages/common/middleware/router_auth.dart';
import 'package:getx_demo/pages/home/index.dart';
import 'package:getx_demo/pages/list/detail.dart';
import 'package:getx_demo/pages/list/index.dart';
import 'package:getx_demo/pages/login/index.dart';
import 'package:getx_demo/pages/my/index.dart';
import 'package:getx_demo/pages/notfound/index.dart';

part 'app_routes.dart';

/// 页面管理器
class AppPages {
  /// 初始页面
  static const String initial = AppRoutes.home;

  /// not found 页面
  static final unknownRoute = GetPage(
    name: AppRoutes.notFound,
    page: () => const NotFoundView(),
  );

  static final routes = [
    /// 登录页路由
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
    ),
    //我的页面路由
    GetPage(
      name: AppRoutes.my,
      page: () => const MyView(),
      middlewares: [
        RouteAuthMiddleWare(priority: 0),
      ],
    ),
    // 首页路由
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      children: [
        GetPage(
          name: AppRoutes.list,
          page: () => const ListView(),
          children: [
            GetPage(
              name: AppRoutes.listDetail,
              page: () => const ListDetailView(),
            ),
            GetPage(
              name: AppRoutes.listDetailId,
              page: () => const ListDetailView(),
            ),
          ],
        ),
      ],
    ),
  ];
}
