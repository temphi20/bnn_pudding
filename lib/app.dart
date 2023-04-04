import 'package:bnn_pudding/config.dart';
import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';

class App extends StatelessWidget {
  const App({super.key});

  Widget buildBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.color,
      title: Text(
        'BNN Pudding',
        style: TextStyle(color: colorAnimated.color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: ScaffoldLayoutBuilder(
          backgroundColorAppBar: const ColorBuilder(BNNColors.primary),
          textColorAppBar: const ColorBuilder(BNNColors.divider),
          appBarBuilder: buildBar,
          child: SingleChildScrollView(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
