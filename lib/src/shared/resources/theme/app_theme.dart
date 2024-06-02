
import 'package:daastane_ma/src/services/local_storage/local_storage.dart';
import 'package:daastane_ma/src/shared/resources/app_constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final appThemeProvider = StateNotifierProvider<AppThemeModeNotifier, ThemeMode> (
      (ref) {
    final storage = ref.watch(storageServiceProvider);
    return AppThemeModeNotifier(storage);
  },
);

class AppThemeModeNotifier extends StateNotifier<ThemeMode> {
  final StorageService storageService;

  ThemeMode currentTheme = ThemeMode.light;

  AppThemeModeNotifier(this.storageService) : super(ThemeMode.light) {
    getCurrentTheme();
  }

  void toggleTheme() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    storageService.set(AppConstants.aPPThemeStorageKey, state.name);
  }

  void getCurrentTheme() async {
    final theme = await storageService.get(AppConstants.aPPThemeStorageKey);
    final value = ThemeMode.values.byName('${theme ?? 'light'}');
    state = value;
  }
}