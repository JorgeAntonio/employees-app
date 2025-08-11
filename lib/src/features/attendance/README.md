# Módulo de Asistencia

Este módulo implementa la funcionalidad completa de asistencia con códigos QR siguiendo Clean Architecture.

## Características Implementadas

### ✅ Funcionalidades Completas

- **Generación de códigos QR** para entrada y salida
- **Escaneo de códigos QR** con validación previa
- **Códigos manuales** como alternativa al escaneo
- **Confirmación de asistencia** con información del empleado
- **Estado de asistencia** en tiempo real
- **Historial de asistencia** con paginación
- **Perfil del empleado**

### 🏗️ Arquitectura

- **Clean Architecture** con separación clara de capas
- **Riverpod** para gestión de estado
- **fpdart** para manejo funcional de errores
- **Dio** para llamadas HTTP
- **Freezed** para inmutabilidad

## Estructura del Proyecto

```
lib/src/features/attendance/
├── domain/
│   ├── entities/           # Entidades del dominio
│   ├── repositories/       # Interfaces de repositorios
│   └── usecases/          # Casos de uso
├── data/
│   ├── datasources/       # Fuentes de datos
│   ├── models/           # Modelos de datos
│   └── repositories/     # Implementaciones de repositorios
└── presentation/
    ├── providers/        # Providers de Riverpod
    ├── widgets/          # Widgets reutilizables
    └── screens/          # Pantallas
```

## Uso

### 1. Configuración Inicial

```dart
// En tu main.dart, asegúrate de tener Riverpod configurado
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
```

### 2. Usar la Pantalla Principal

```dart
import 'package:attendance_app/src/features/attendance/attendance.dart';

// En tu navegación
MaterialPageRoute(
  builder: (context) => const AttendanceScreen(),
)
```

### 3. Usar Widgets Individuales

```dart
// Generador de QR
const QRGeneratorWidget()

// Estado de asistencia
const AttendanceStatusWidget()

// Historial de asistencia
const AttendanceHistoryWidget()
```

### 4. Usar Providers Directamente

```dart
// Generar QR de entrada
await ref.read(qrCodeNotifierProvider.notifier).generateCheckInQR();

// Validar código
await ref.read(attendanceValidationNotifierProvider.notifier).validateCode('ABC123');

// Confirmar asistencia
await ref.read(attendanceConfirmationNotifierProvider.notifier).confirmAttendance(
  code: 'ABC123',
  confirmed: true,
);
```

## Flujo de Trabajo

### Para Empleados:

1. **Generar QR**: El empleado genera un código QR para entrada o salida
2. **Escanear/Validar**: Escanea el QR o ingresa el código manual
3. **Confirmar**: Ve sus datos y confirma la asistencia
4. **Registro**: El sistema registra oficialmente la entrada/salida

### Para Administradores (Futuro):

- Generar códigos QR para cualquier empleado
- Ver historiales de todos los empleados
- Consultar estados de asistencia

## Configuración de API

### URL Base

Cambia la URL base en `AttendanceRemoteDataSourceImpl`:

```dart
_dio.options.baseUrl = 'https://tu-api.com/api/v1';
```

### Token de Autenticación

Reemplaza el token de prueba con el token real:

```dart
static const String _testToken = 'tu-token-jwt-real';
```

## Estados de Asistencia

- `PRESENT`: Empleado presente (marcó entrada)
- `ABSENT`: Empleado ausente
- `LATE`: Empleado llegó tarde
- `EARLY_DEPARTURE`: Empleado se fue temprano

## Manejo de Errores

El módulo utiliza `fpdart` para manejo funcional de errores:

```dart
final result = await someUseCase();
result.fold(
  (exception) {
    // Manejar error
    print('Error: ${exception.toString()}');
  },
  (data) {
    // Manejar éxito
    print('Éxito: $data');
  },
);
```

## Generación de Código

Para generar los archivos necesarios:

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## Dependencias Requeridas

```yaml
dependencies:
  flutter_riverpod: ^2.6.1
  riverpod_annotation: ^2.6.1
  fpdart: ^1.1.0
  dio: ^5.8.0+1
  freezed_annotation: ^3.1.0
  json_annotation: ^4.9.0
  mobile_scanner: ^6.0.7

dev_dependencies:
  build_runner: ^2.6.0
  freezed: ^3.2.0
  json_serializable: ^6.10.0
```

## Próximos Pasos

1. **Autenticación**: Integrar con el sistema de autenticación real
2. **Administradores**: Implementar funcionalidades para administradores
3. **Notificaciones**: Agregar notificaciones push
4. **Offline**: Implementar modo offline
5. **Tests**: Agregar tests unitarios y de widgets
