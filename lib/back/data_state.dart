import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data_handle.dart';

class DataState extends ChangeNotifier {
  static DataState on(BuildContext context) => Provider.of<DataState>(context);
  static DataState of(BuildContext context) =>
      Provider.of<DataState>(context, listen: false);
}
