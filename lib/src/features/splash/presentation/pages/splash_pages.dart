import 'package:daastane_ma/src/features/splash/presentation/providers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class SplashPage extends ConsumerWidget {
  static const String routeName = '/splash-page';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashController = ref.read(splashControllerProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      splashController.checkUserLogin(context);
    });
    return const Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
        ),
      ),
    );
  }
}
