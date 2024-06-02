

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authControllerProvider = Provider((ref) => AuthenticationProvider(ref: ref));

class AuthenticationProvider {
  final Ref ref;
  AuthenticationProvider({required this.ref});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;

  bool keyboardVisible (BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom != 0;
  }

  void togglePasswordVisibility() {
    passwordVisible =! passwordVisible;
  }
}
