# Flutter Downloader Implementation

## Descripción

Se ha implementado `flutter_downloader` para resolver los problemas de descarga de archivos en las nuevas versiones de Android. Este paquete utiliza WorkManager en Android y NSURLSessionDownloadTask en iOS para manejar descargas en segundo plano.

## Características implementadas

### 1. Configuración automática
- Inicialización automática en `main.dart`
- Configuración de permisos para Android
- Provider paths para acceso a archivos

### 2. Servicio de descarga (`DownloadService`)
- Manejo de permisos automático
- Descarga con notificaciones
- Seguimiento del progreso
- Manejo robusto de errores
- Soporte para multiple storage directories

### 3. Integración con el feature de importación
- Descarga del template de empleados usando flutter_downloader
- Feedback visual mejorado para el usuario
- Manejo de errores específicos para la descarga

## Configuración Android

### AndroidManifest.xml
```xml
<!-- Permisos adicionales -->
<uses-permission android:name="android.permission.FOREGROUND_SERVICE"/>
<uses-permission android:name="android.permission.REQUEST_INSTALL_PACKAGES"/>

<!-- Provider para acceso a archivos -->
<provider
    android:name="vn.hunghd.flutterdownloader.DownloadedFileProvider"
    android:authorities="${applicationId}.flutter_downloader.provider"
    android:exported="false"
    android:grantUriPermissions="true">
    <meta-data
        android:name="android.support.FILE_PROVIDER_PATHS"
        android:resource="@xml/provider_paths"/>
</provider>
```

### provider_paths.xml
```xml
<paths xmlns:android="http://schemas.android.com/apk/res/android">
    <external-path name="external_files" path="."/>
    <external-files-path name="external_files" path="Download"/>
    <cache-path name="cache" path="."/>
    <external-cache-path name="external_cache" path="."/>
    <files-path name="files" path="."/>
</paths>
```

## Uso del DownloadService

### Descarga básica
```dart
final taskId = await DownloadService.downloadFile(
  url: 'https://example.com/file.xlsx',
  filename: 'my_file.xlsx',
  headers: {'Authorization': 'Bearer token'},
);
```

### Esperar completación
```dart
final task = await DownloadService.waitForDownloadCompletion(
  taskId,
  maxWaitTimeSeconds: 60,
);
```

### Obtener ruta del archivo
```dart
final filePath = await DownloadService.getDownloadedFilePath('my_file.xlsx');
final file = File(filePath);
```

## Beneficios

1. **Compatibilidad**: Funciona con las nuevas restricciones de Android 11+
2. **Experiencia de usuario**: Notificaciones de progreso
3. **Robustez**: Manejo automático de permisos y errores
4. **Flexibilidad**: Soporte para múltiples directorios de almacenamiento
5. **Background**: Las descargas continúan aunque la app esté en segundo plano

## Archivos modificados

- `pubspec.yaml` - Agregada dependencia flutter_downloader
- `android/app/src/main/AndroidManifest.xml` - Configuración de permisos y provider
- `android/app/src/main/res/xml/provider_paths.xml` - Rutas de acceso a archivos
- `lib/main.dart` - Inicialización de flutter_downloader
- `lib/src/core/services/download_service.dart` - Servicio principal
- `lib/src/core/providers/download_providers.dart` - Provider de Riverpod
- `lib/src/features/employees/data/datasources/api/import_employees_datasource_impl.dart` - Integración con API
- `lib/src/features/employees/presentation/screens/import_employees_screen.dart` - UI mejorada

## Limitaciones conocidas

1. En iOS, los archivos se descargan al Documents directory
2. En Android, se requieren permisos de almacenamiento
3. Los archivos se descargan en la carpeta Download pública en Android

## Troubleshooting

### Error de permisos en Android
- Verificar que los permisos estén correctamente configurados en AndroidManifest.xml
- El usuario debe aceptar los permisos de almacenamiento

### Archivos no encontrados
- Verificar que el directorio de descarga exista
- En Android, el directorio `/storage/emulated/0/Download` debe ser accesible

### Descargas lentas o fallidas
- Verificar conexión a internet
- Verificar que la URL sea accesible
- Revisar los headers de autorización si son requeridos