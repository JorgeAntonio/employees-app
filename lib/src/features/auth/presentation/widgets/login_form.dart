import 'package:attendance_app/src/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar Sesión'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: authState.isLoading
                    ? null
                    : () {
                        ref
                            .read(authStateProvider.notifier)
                            .signIn(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                      },
                child: authState.isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Iniciar Sesión'),
              ),
            ),
            const SizedBox(height: 16),
            authState.when(
              data: (authSession) {
                if (authSession != null) {
                  return const Text(
                    '¡Inicio de sesión exitoso!',
                    style: TextStyle(color: Colors.green),
                  );
                }
                return const SizedBox.shrink();
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text(
                'Error: ${error.toString()}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
