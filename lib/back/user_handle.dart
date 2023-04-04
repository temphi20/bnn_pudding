import 'package:bnn_pudding/back/page_state.dart';

class UserHandle {
  static String uid = '';

  void signInOut() {
    if (uid.isEmpty) {
      signIn();
    } else {
      signOut();
    }
  }

  void signIn() {}
  void signOut() {}
  void signUp() {}
}
