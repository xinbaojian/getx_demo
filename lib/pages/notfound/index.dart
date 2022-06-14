import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/common/routes/app_pages.dart';

/// 404 not found 页面
class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("路由没有找到"),
      ),
      body: Center(
        child: InkWell(
          child: const Text("返回首页"),
          onTap: () => Get.offAllNamed(AppRoutes.home),
        ),
      ),
    );
  }
}
