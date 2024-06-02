import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'local_storage.dart';

final storageServiceProvider = Provider((ref) {
  final SharedPrefsService prefsService = SharedPrefsService();
  prefsService.init();
  return prefsService;
});