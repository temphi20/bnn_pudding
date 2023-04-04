import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseHandle {
  FirebaseHandle({required this.uid}) {
    collection = inst.collection(uid);
  }
  final String uid;

  static final FirebaseFirestore inst = FirebaseFirestore.instance;
  static late CollectionReference collection;
}
