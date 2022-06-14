part of 'app_pages.dart';

/// 路由管理器
abstract class AppRoutes {
  /// 首页
  static const String home = '/home';

  /// 列表页面
  static const String list = '/list';

  /// 列表详情页
  static const String listDetail = '/detail';
  static const String listDetailId = '/detail/:id';

  /// 404 not found 页面
  static const String notFound = '/not-found';

  /// 登录页面
  static const String login = '/login';

  /// 我的页面
  static const String my = '/my';
}
