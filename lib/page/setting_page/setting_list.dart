import 'package:bnn_pudding/back/page_state.dart';
import 'package:bnn_pudding/back/user_handle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: ScrollController(),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        ListTile(
          title: Text(PageState.on(context).getSignText()),
          leading: const Icon(FontAwesomeIcons.doorClosed),
          onTap: () {
            UserHandle().signInOut();
            PageState.on(context).setUid();
          },
          onLongPress: () {
            UserHandle().signInOut();
            PageState.on(context).setUid();
          },
        ),
      ],
    );
  }
}
