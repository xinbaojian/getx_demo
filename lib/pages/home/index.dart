import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/common/routes/app_pages.dart';
import 'package:getx_demo/pages/list/detail.dart';
import 'package:getx_demo/pages/my/index.dart';

/// 首页页面
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: ListView(children: <Widget>[
        ListTile(
          title: const Text("导航-命名路由 home > list"),
          subtitle: const Text('Get.toNamed("/home/list")'),
          onTap: () => Get.toNamed("/home/list"),
        ),
        ListTile(
          title: const Text("导航-命名路由 home > list > detail"),
          subtitle: const Text('Get.toNamed("/home/list/detail")'),
          onTap: () => Get.toNamed("/home/list/detail"),
        ),
        ListTile(
          title: const Text("导航-类对象"),
          subtitle: const Text("Get.to(DetailView())"),
          onTap: () => Get.to(
            const ListDetailView(),
            transition: Transition.downToUp,
          ),
        ),
        //清除上一个导航
        ListTile(
          title: const Text("导航-类对象-清除上一个导航"),
          subtitle: const Text('Get.off(DetailView())'),
          onTap: () => Get.off(
            const ListDetailView(),
            transition: Transition.rightToLeft,
          ),
        ),
        ListTile(
          title: const Text("导航-类对象-清除所有导航"),
          subtitle: const Text('Get.off(DetailView())'),
          onTap: () => Get.offAll(
            const ListDetailView(),
            transition: Transition.rightToLeft,
          ),
        ),
        ListTile(
          /// 参数传值，类似post request
          title: const Text("导航-arguments传值+返回值"),
          subtitle: const Text('Get.off(DetailView())'),
          onTap: () async {
            var result = await Get.to(
              const ListDetailView(),
              arguments: {"id": 1},
            );
            Get.snackbar("返回值：", "$result");
          },
        ),
        ListTile(
          /// 参数传值，类似 get request
          title: const Text("导航-arguments传值+返回值"),
          subtitle: const Text('Get.off(DetailView())'),
          onTap: () async {
            var result = await Get.toNamed('/home/list/detail?id=666');
            Get.snackbar("返回值：", "$result");
          },
        ),
        ListTile(
          /// url路径参数传值，类似 path valiable
          title: const Text("导航-arguments传值+返回值"),
          subtitle: const Text('Get.off(DetailView())'),
          onTap: () async {
            var result = await Get.toNamed('/home/list/detail/777');
            Get.snackbar("返回值：", "$result");
          },
        ),
        ListTile(
          /// not found
          title: const Text("NotFound页面"),
          subtitle: const Text('Get.off(DetailView())'),
          onTap: () async {
            var result = await Get.toNamed('/aaa/bb/cc');
            Get.snackbar("返回值：", "$result");
          },
        ),
        ListTile(
          /// not found
          title: const Text("导航-中间件-认证Auth"),
          subtitle: const Text('Get.to(MyView())'),
          onTap: () => Get.toNamed(AppRoutes.my),
        ),
      ]),
    );
  }
}
