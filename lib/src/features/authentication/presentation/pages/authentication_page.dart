import 'package:daastane_ma/src/features/authentication/presentation/pages/widgets/rive_widget.dart';
import 'package:daastane_ma/src/features/authentication/presentation/providers/authentication_provider.dart';
import 'package:daastane_ma/src/shared/resources/resources.dart';
import 'package:daastane_ma/src/shared/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AuthenticationPage extends ConsumerWidget {
  static const routeName = '/auth-page';
  const AuthenticationPage({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.read(authControllerProvider);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RiveWidget(),
              Space.h16,
              DMTextFormField(
                  controller: authProvider.usernameController,
                  hintText: AppLocalizations.of(context)!.userName,
              ),
              Space.h16,
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return DMTextFormField(
                    controller: authProvider.passwordController,
                    hintText: AppLocalizations.of(context)!.password,
                    isPasswordField: authProvider.passwordVisible,
                    suffixIcon: InkWell(
                        onTap: authProvider.togglePasswordVisibility,
                        child: Icon(
                          authProvider.passwordVisible ? Icons.visibility : Icons.visibility_off , size: AppSize.s20, color: Theme.of(context).colorScheme.secondary,)),
                    // hintStyle: Th,
                  );
                },
              ),
              Space.h16,
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: DurationConstant.d500),
          opacity: authProvider.keyboardVisible(context) ? 0.0 : 1.0,
          child: authProvider.keyboardVisible(context) ? const SizedBox.shrink() : DMElevatedButton(
            title: AppLocalizations.of(context)!.confirm,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
