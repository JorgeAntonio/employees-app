# Guía de Implementación de Autenticación

## ✅ Lo que ya está implementado

### 1. **Domain Layer** (Capa de Dominio)

- ✅ `AuthSession` entity con todas las clases anidadas
- ✅ `AuthRepository` interface
- ✅ `AuthDataSource` interface
- ✅ `SignInUseCase` con validaciones

### 2. **Data Layer** (Capa de Datos)

- ✅ `AuthSessionModel` y modelos relacionados con Freezed
- ✅ `AuthDataSourceImpl` para llamadas API con Dio
- ✅ `AuthLocalDataSource` interface y implementación
- ✅ `AuthRepositoryImpl` que coordina API y local storage
- ✅ Configuración de Dio con interceptors

### 3. **Providers** (Dependency Injection)

- ✅ Providers de Riverpod para todas las dependencias
- ✅ State provider para manejo de estado de autenticación

## 🔧 Pasos para completar la implementación

### 1. **Instalar dependencias faltantes**

Agrega `shared_preferences` a tu `pubspec.yaml`:

```yaml
dependencies:
  # ... otras dependencias
  shared_preferences: ^2.2.2
```

Ejecuta:

```bash
flutter pub get
```

### 2. **Generar archivos de código**

Ejecuta el build runner para generar los archivos de Freezed y Riverpod:

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### 3. **Configurar variables de entorno**

En tu archivo `.env`, agrega la URL de tu API:

```env
APP_API_USER_SERVICE=http://tu-api-url.com/api
```

### 4. **Configurar logging**

En tu `main.dart`, agrega la configuración de logging:

```dart
import 'package:attendance_app/src/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Cargar variables de entorno
  await ApiServiceVariables.loadEnv();
  
  // Configurar logging de red
  DioConfig.configureLogging(enableNetworkLogs: true);
  
  runApp(MyApp());
}
```

### 5. **Usar el sistema de autenticación**

#### En un widget:

```dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:attendance_app/src/features/auth/presentation/widgets/login_form.dart';

class LoginPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: LoginForm(),
    );
  }
}
```

#### En un provider o controller:

```dart
// Obtener el use case
final signInUseCase = ref.read(signInUseCaseProvider);

// Ejecutar sign in
final result = await signInUseCase(
  email: 'usuario@ejemplo.com',
  password: 'password123',
);

result.fold(
  (failure) {
    // Manejar error
    print('Error: ${failure.message}');
  },
  (authSession) {
    // Manejar éxito
    print('Usuario autenticado: ${authSession.data.user.email}');
  },
);
```

## 🏗️ Arquitectura implementada

```
┌─────────────────────────────────────────────────────────────┐
│                    PRESENTATION LAYER                      │
├─────────────────────────────────────────────────────────────┤
│  Widgets (LoginForm, etc.)                                 │
│  State Providers (AuthState)                               │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────┐
│                     DOMAIN LAYER                           │
├─────────────────────────────────────────────────────────────┤
│  Entities (AuthSession, AuthSessionData, etc.)             │
│  Use Cases (SignInUseCase)                                 │
│  Repository Interfaces (AuthRepository)                    │
│  DataSource Interfaces (AuthDataSource)                    │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────┐
│                      DATA LAYER                            │
├─────────────────────────────────────────────────────────────┤
│  Models (AuthSessionModel, etc.)                           │
│  Repository Implementation (AuthRepositoryImpl)            │
│  API DataSource (AuthDataSourceImpl)                       │
│  Local DataSource (AuthLocalDataSourceImpl)                │
└─────────────────────────────────────────────────────────────┘
```

## 🔄 Flujo de autenticación

1. **Usuario ingresa credenciales** → Widget
2. **Validación de inputs** → UseCase
3. **Llamada a API** → Repository → API DataSource
4. **Guardado local** → Repository → Local DataSource
5. **Actualización de estado** → State Provider
6. **UI se actualiza** → Widget

## 📝 Notas importantes

### Sobre los Mappers

- **No son necesarios** con Freezed porque ya tienes las extensiones `toDomain()`
- Freezed maneja automáticamente la serialización/deserialización JSON
- Las extensiones convierten de Model a Entity automáticamente

### Sobre la estructura

- Tu flujo es **correcto**: Domain → Data → Presentation
- Los repositories en domain son **interfaces**
- Las implementaciones van en la capa **data**
- Los datasources siguen el mismo patrón

### Sobre el manejo de errores

- Usamos `Either<Failure, T>` de fpdart para manejo funcional de errores
- Los errores se propagan desde la capa de datos hasta la UI
- Cada capa puede agregar contexto específico al error

## 🔍 **Ver los logs de red**

Cuando hagas una petición de autenticación, verás en la consola:

```
🌐 Network logging enabled
📡 Base URL: http://tu-api-url.com/api
🌐 REQUEST [POST] => http://tu-api-url.com/api/auth/signin
📋 Headers: {Content-Type: application/json, Accept: application/json}
📦 Data: {email: ana@ejemplo.com, password: password123}
⏱️  Timeout: 30s
⏱️  Response Time: 245ms
✅ RESPONSE [200] => http://tu-api-url.com/api/auth/signin
📦 Response Data: {success: true, data: {...}}
```

## 🚀 Próximos pasos

1. Ejecuta `flutter pub get` para instalar `shared_preferences`
2. Ejecuta `build_runner` para generar archivos
3. Configura tu URL de API en `.env`
4. Configura el logging en `main.dart`
5. Usa el `LoginForm` en tu app
6. Personaliza la UI según tus necesidades

¡Tu implementación de Clean Architecture está lista! 🎉
