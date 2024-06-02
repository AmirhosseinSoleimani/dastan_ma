import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class AuthenticationPage extends ConsumerWidget {
  static const routeName = '/auth-page';
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
