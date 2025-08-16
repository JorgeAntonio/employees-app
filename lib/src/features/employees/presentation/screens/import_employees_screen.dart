import 'dart:io';

import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../providers/import_employees_providers.dart';

class ImportEmployeesScreen extends ConsumerWidget {
  const ImportEmployeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final importState = ref.watch(importEmployeesNotifierProvider);
    final importNotifier = ref.read(importEmployeesNotifierProvider.notifier);

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Importar Empleados',
        centerTitle: true,
        leading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Información sobre el formato
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Formato del archivo',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'El archivo debe contener las siguientes columnas en este orden:',
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'firstName, lastName, dni, email, phone, position, department, shiftName',
                        style: TextStyle(fontFamily: 'monospace', fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Formatos soportados: CSV, XLS, XLSX (máximo 10MB)',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Botón para descargar template
            ElevatedButton.icon(
              onPressed: _isDownloading(importState)
                  ? null
                  : () => _downloadTemplate(context, importNotifier),
              icon: _isDownloading(importState)
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.download),
              label: Text(
                _isDownloading(importState)
                    ? 'Descargando...'
                    : 'Descargar Template',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),

            const SizedBox(height: 16),

            // Botón para subir archivo
            ElevatedButton.icon(
              onPressed: _isUploading(importState)
                  ? null
                  : () => _pickAndUploadFile(context, importNotifier),
              icon: _isUploading(importState)
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.upload_file),
              label: Text(
                _isUploading(importState)
                    ? 'Subiendo archivo...'
                    : 'Seleccionar y Subir Archivo',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ),

            const SizedBox(height: 24),

            // Mostrar resultado
            _buildResultWidget(context, importState, importNotifier),
          ],
        ),
      ),
    );
  }

  Widget _buildResultWidget(
    BuildContext context,
    ImportEmployeesState state,
    ImportEmployeesNotifier notifier,
  ) {
    return switch (state) {
      ImportEmployeesState()
          when state.runtimeType.toString() == '_TemplateDownloaded' =>
        _buildTemplateDownloadedCard(context, state, notifier),
      ImportEmployeesState()
          when state.runtimeType.toString() == '_UploadCompleted' =>
        _buildUploadCompletedCard(context, state, notifier),
      ImportEmployeesState() when state.runtimeType.toString() == '_Error' =>
        _buildErrorCard(context, state, notifier),
      _ => const SizedBox.shrink(),
    };
  }

  Widget _buildTemplateDownloadedCard(
    BuildContext context,
    ImportEmployeesState state,
    ImportEmployeesNotifier notifier,
  ) {
    // Cast to dynamic to access the file property
    final file = (state as dynamic).file as File;

    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Template descargado exitosamente',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Ubicación: ${file.path}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => notifier.resetState(),
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadCompletedCard(
    BuildContext context,
    ImportEmployeesState state,
    ImportEmployeesNotifier notifier,
  ) {
    // Cast to dynamic to access the response property
    final response = (state as dynamic).response;

    return Card(
      color: response.success
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  response.success ? Icons.check_circle : Icons.error,
                  color: response.success
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.error,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    response.success
                        ? 'Importación completada'
                        : 'Error en la importación',
                    style: TextStyle(
                      color: response.success
                          ? Theme.of(context).colorScheme.onPrimaryContainer
                          : Theme.of(context).colorScheme.onErrorContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              response.message,
              style: TextStyle(
                color: response.success
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
            if (response.success && response.importedCount > 0) ...[
              const SizedBox(height: 8),
              Text(
                'Empleados importados: ${response.importedCount}',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            if (response.errors.isNotEmpty) ...[
              const SizedBox(height: 12),
              Text(
                'Errores encontrados:',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onErrorContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              ...response.errors.map(
                (error) => Padding(
                  padding: const EdgeInsets.only(left: 16, top: 2),
                  child: Text(
                    '• $error',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onErrorContainer,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => notifier.resetState(),
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorCard(
    BuildContext context,
    ImportEmployeesState state,
    ImportEmployeesNotifier notifier,
  ) {
    // Cast to dynamic to access the message property
    final message = (state as dynamic).message as String;

    return Card(
      color: Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.error, color: Theme.of(context).colorScheme.error),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Error',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onErrorContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => notifier.resetState(),
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }

  bool _isDownloading(ImportEmployeesState state) {
    return state.runtimeType.toString() == '_DownloadingTemplate';
  }

  bool _isUploading(ImportEmployeesState state) {
    return state.runtimeType.toString() == '_Uploading';
  }

  Future<void> _downloadTemplate(
    BuildContext context,
    ImportEmployeesNotifier notifier,
  ) async {
    // Solicitar permisos de almacenamiento
    final status = await Permission.storage.request();
    if (!status.isGranted) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Se requieren permisos de almacenamiento para descargar el archivo',
            ),
            backgroundColor: Colors.orange,
          ),
        );
      }
      return;
    }

    await notifier.downloadTemplate();
  }

  Future<void> _pickAndUploadFile(
    BuildContext context,
    ImportEmployeesNotifier notifier,
  ) async {
    try {
      // Seleccionar archivo
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['csv', 'xlsx', 'xls'],
        allowMultiple: false,
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        await notifier.uploadEmployeesFile(file);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al seleccionar archivo: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
