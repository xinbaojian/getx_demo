import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/common/routes/app_pages.dart';

/// 登录页面
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录页面'),
      ),
      body: Center(
        child: InkWell(
          child: const Text('登录页面'),
          onTap: () {
            Get.offAllNamed(AppRoutes.home);
          },
        ),
      ),
    );
  }
}
