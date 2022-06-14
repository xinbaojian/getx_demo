import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_demo/pages/common/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //不显示debug 标签
      debugShowCheckedModeBanner: false,
      //初始化根路由
      initialRoute: AppPages.initial,
      //初始化路由列表
      getPages: AppPages.routes,
      //默认转场动画
      defaultTransition: Transition.fade,
      // not found 页面
      unknownRoute: AppPages.unknownRoute,
    );
  }
}
