import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/download_service.dart';

final downloadServiceProvider = Provider<DownloadService>((ref) {
  // Inicializar el servicio cuando se crea el provider
  DownloadService.initialize();

  // Cleanup cuando el provider se dispose
  ref.onDispose(() {
    DownloadService.dispose();
  });

  return DownloadService();
});
