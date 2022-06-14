import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/common/routes/app_pages.dart';

class RouteAuthMiddleWare extends GetMiddleware {
  RouteAuthMiddleWare({priority}) : super(priority: priority);

  @override
  RouteSettings? redirect(String? route) {
    /// 这里进行权限校验
    Future.delayed(const Duration(seconds: 1), () {
      Get.snackbar("提示", "请先登录APP");
    });
    return const RouteSettings(name: AppRoutes.login);
  }
}
