import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'user_handle.dart';

class PageState extends ChangeNotifier {
  static PageState on(BuildContext context) => Provider.of<PageState>(context);
  static PageState of(BuildContext context) =>
      Provider.of<PageState>(context, listen: false);

  String uid = '';
  PageController controller = PageController(initialPage: 1);

  void movePage(int index) {
    // this.index = index;
    controller.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    // notifyListeners();
  }

  void setUid() {
    uid = UserHandle.uid;
    notifyListeners();
  }

  String getSignText() {
    if (uid.isEmpty) {
      return '로그인';
    } else {
      return '로그아웃';
    }
  }
}
