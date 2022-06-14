import 'package:flutter/material.dart';

/// 列表页面
class ListView extends StatelessWidget {
  const ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('列表页面'),
      ),
    );
  }
}
