import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends HookWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    // Hooks for form controllers
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isLoading = useState(false);
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);

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
                      decoration: const InputDecoration(
                        labelText: 'Correo electrónico',
                        hintText: 'ejemplo@empresa.com',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa tu correo electrónico';
                        }
                        if (!value.contains('@')) {
                          return 'Por favor ingresa un correo válido';
                        }
                        return null;
                      },
                    ),

                    // Password field
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        hintText: 'Ingresa tu contraseña',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa tu contraseña';
                        }
                        if (value.length < 6) {
                          return 'La contraseña debe tener al menos 6 caracteres';
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
                        onPressed: isLoading.value
                            ? null
                            : () {
                                _handleSignIn(
                                  context,
                                  formKey,
                                  emailController,
                                  passwordController,
                                  isLoading,
                                );
                              },
                        child: isLoading.value
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
                        Checkbox(value: true, onChanged: (value) {}),
                        Flexible(
                          child: Text(
                            'Al iniciar sesión, aceptas nuestros términos y condiciones',
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
    ValueNotifier<bool> isLoading,
  ) async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    isLoading.value = true;

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    if (context.mounted) {
      isLoading.value = false;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('¡Inicio de sesión exitoso!'),
          backgroundColor: context.appColorScheme.primary,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DoubleSizes.size12),
          ),
        ),
      );

      context.goNamed(Routes.home.name);
    }
  }
}
