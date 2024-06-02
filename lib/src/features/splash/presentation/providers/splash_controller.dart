import 'package:daastane_ma/src/features/authentication/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final splashControllerProvider = Provider((ref) => SplashProvider(ref: ref));

class SplashProvider {
  final Ref ref;
  SplashProvider({required this.ref});

  final userLoginCheckController = FutureProvider<bool>((ref) async {
    // final repo = ref.watch(userLocalRepositoryProvider);
    // return await repo.hasUser();
    await Future.delayed(const Duration(seconds: 2));
    return true;
  });

  void checkUserLogin(BuildContext context) {
    ref.listen<AsyncValue<bool>>(userLoginCheckController, (previous, next) {
      next.whenData((isUserLoggedIn) {
        const routeName = AuthenticationPage.routeName;
        // isUserLoggedIn ? DashboardScreen.routeName : LoginScreen.routeName;
        context.go(routeName);
      });
    });
  }
}