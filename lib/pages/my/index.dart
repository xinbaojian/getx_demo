import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/common/routes/app_pages.dart';

/// 我的页面
class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的页面'),
      ),
      body: Center(
        child: InkWell(
          child: const Text('返回首页'),
          onTap: () => Get.offAllNamed(AppRoutes.home),
        ),
      ),
    );
  }
}
