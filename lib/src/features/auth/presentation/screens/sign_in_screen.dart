import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;
    final authState = ref.watch(authStateProvider);

    // Hooks for form controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);
    final showPassword = useState(false);

    // Listen for authentication state changes
    ref.listen(authStateProvider, (previous, next) {
      // Solo procesar si hay un cambio real
      if (previous == next) return;

      next.when(
        data: (authSession) {
          if (authSession != null) {
            // Mostrar mensaje de éxito
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('¡Inicio de sesión exitoso!'),
                backgroundColor: colorScheme.primary,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(DoubleSizes.size12),
                ),
              ),
            );
            // La navegación se maneja automáticamente en el router
          }
        },
        loading: () {
          // No hacer nada, el loading se maneja en el botón
        },
        error: (error, stack) {
          String errorMessage = 'Error desconocido';
          if (error is Failure) {
            errorMessage = error.message;
          } else {
            errorMessage = error.toString();
          }

          // Mostrar mensaje de error
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $errorMessage'),
              backgroundColor: colorScheme.error,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DoubleSizes.size12),
              ),
            ),
          );
        },
      );
    });

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: DoubleSizes.size24,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  spacing: DoubleSizes.size24,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // App Logo
                    Container(
                      width: DoubleSizes.size80,
                      height: DoubleSizes.size80,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(DoubleSizes.size20),
                      ),
                      child: Icon(
                        Icons.access_time_filled_rounded,
                        size: DoubleSizes.size40,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),

                    // Title
                    Text(
                      'Iniciar sesión',
                      style: textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),

                    const SizedBox(height: DoubleSizes.size16),

                    // Email field
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        hintText: 'ejemplo@empresa.com',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Por favor ingresa tu correo electrónico';
                        }

                        final email = value.trim();
                        final emailRegex = RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                        );

                        if (!emailRegex.hasMatch(email)) {
                          return 'Por favor ingresa un correo electrónico válido';
                        }

                        return null;
                      },
                    ),

                    // Password field
                    TextFormField(
                      controller: passwordController,
                      obscureText: !showPassword.value,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        hintText: 'Ingresa tu contraseña',
                        prefixIcon: Icon(Icons.lock_outlined),
                        suffixIcon: IconButton(
                          onPressed: () {
                            showPassword.value = !showPassword.value;
                          },
                          icon: Icon(
                            showPassword.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa tu contraseña';
                        }

                        if (value.length < 6) {
                          return 'La contraseña debe tener al menos 6 caracteres';
                        }

                        // // Validaciones adicionales de contraseña
                        // if (!RegExp(r'[A-Z]').hasMatch(value)) {
                        //   return 'La contraseña debe contener al menos una mayúscula';
                        // }

                        if (!RegExp(r'[a-z]').hasMatch(value)) {
                          return 'La contraseña debe contener al menos una minúscula';
                        }

                        if (!RegExp(r'[0-9]').hasMatch(value)) {
                          return 'La contraseña debe contener al menos un número';
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: DoubleSizes.size16),

                    // Sign in button
                    SizedBox(
                      width: double.infinity,
                      height: DoubleSizes.size56,
                      child: FilledButton(
                        onPressed: authState.isLoading
                            ? null
                            : () => _handleSignIn(
                                context,
                                formKey,
                                emailController,
                                passwordController,
                                ref,
                              ),
                        child: authState.isLoading
                            ? SizedBox(
                                width: DoubleSizes.size24,
                                height: DoubleSizes.size24,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    colorScheme.onPrimary,
                                  ),
                                ),
                              )
                            : Text(
                                'Iniciar sesión',
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onPrimary,
                                ),
                              ),
                      ),
                    ),

                    // Terms and conditions
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            '¿Tienes problemas para iniciar sesión? Contacta al administrador',
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurface.withValues(
                                alpha: 0.5,
                              ),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSignIn(
    BuildContext context,
    GlobalKey<FormState> formKey,
    TextEditingController emailController,
    TextEditingController passwordController,
    WidgetRef ref,
  ) async {
    // Validar formulario primero
    if (!formKey.currentState!.validate()) {
      return;
    }

    // Llamar al provider de autenticación
    await ref
        .read(authStateProvider.notifier)
        .signIn(
          email: emailController.text.trim(),
          password: passwordController.text,
        );
  }
}
