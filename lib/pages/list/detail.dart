import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 列表详情页
class ListDetailView extends StatelessWidget {
  const ListDetailView({Key? key}) : super(key: key);

  _buildBackListTileRow(Map? map) {
    return map == null
        ? Container()
        : ListTile(
            title: Text("传值 id = ${map['id'].toString()}"),
            subtitle: const Text('Get.back(result: {"success":true});'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    // 接收参数对象
    final Map? detail = Get.arguments;
    // 接收路径传参 类似 get request 参数,自动转换为Map接收
    final parameters = Get.parameters;
    return Scaffold(
      appBar: AppBar(
        title: const Text('列表详情页'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text("导航-返回"),
            subtitle: const Text("Get.back()"),
            onTap: () => Get.back(result: {"success": true}),
          ),
          _buildBackListTileRow(detail),
          _buildBackListTileRow(parameters),
        ],
      ),
    );
  }
}
