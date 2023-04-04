import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageState extends ChangeNotifier {
  static PageState on(BuildContext context) => Provider.of<PageState>(context);
  static PageState of(BuildContext context) =>
      Provider.of<PageState>(context, listen: false);

  // int index = 1;
  PageController controller = PageController(initialPage: 1);

  void movePage(int index) {
    // this.index = index;
    controller.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    // notifyListeners();
  }
}
