import 'package:bnn_pudding/back/page_state.dart';
import 'package:bnn_pudding/config.dart';
import 'package:bnn_pudding/page/home_page.dart';
import 'package:bnn_pudding/page/setting_page.dart';
import 'package:bnn_pudding/page/write_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        extendBody: true,
        // appBar: AppBar(
        //   backgroundColor: BNNColors.primary,
        //   title: Text(
        //     'BNN Pudding',
        //     style: TextStyle(color: BNNColors.divider),
        //   ),
        // ),
        body: AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: PageView(
            controller: PageState.of(context).controller,
            onPageChanged: (index) => PageState.of(context).movePage(index),
            children: const <Widget>[WritePage(), HomePage(), SettingPage()],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 24),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: BNNColors.primary,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: BNNColors.divider,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.feather, size: 16),
                  onPressed: () => PageState.of(context).movePage(0),
                ),
                Container(width: 10),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.house, size: 16),
                  onPressed: () => PageState.of(context).movePage(1),
                ),
                Container(width: 10),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.gears, size: 16),
                  onPressed: () => PageState.of(context).movePage(2),
                ),
              ],
            ),
          ),
        ),

        // Container(
        //   height: 80,
        //   child: SnakeNavigationBar.color(
        //     padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        //     shape:
        //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        //     shadowColor: BNNColors.secondary,
        //     behaviour: SnakeBarBehaviour.floating,
        //     // snakeShape: SnakeShape.indicator,
        //     snakeViewColor: Colors.white, // BNNColors.primary,
        //     selectedItemColor: BNNColors.primary,
        //     unselectedItemColor: BNNColors.secondary,
        //     showSelectedLabels: false,
        //     showUnselectedLabels: false,
        //     currentIndex: PageState.on(context).index,
        //     onTap: (index) => PageState.of(context).movePage(index),
        //     items: const [
        //       BottomNavigationBarItem(
        //         icon: Icon(
        //           FontAwesomeIcons.feather,
        //           size: 16,
        //         ),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(
        //           FontAwesomeIcons.house,
        //           size: 16,
        //         ),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(
        //           FontAwesomeIcons.gears,
        //           size: 16,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
