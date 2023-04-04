import 'package:bnn_pudding/page/setting_page/setting_list.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SettingList(),
    );
  }
}
