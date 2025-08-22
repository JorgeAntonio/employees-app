import 'dart:io';

import 'package:alert_info/alert_info.dart';
import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:attendance_app/src/core/shared/loaders/flutter_app_blurry_loader.dart';
import 'package:attendance_app/src/core/shared/widgets/attendance_app_bar.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/import_employees_providers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:open_filex/open_filex.dart';
import 'package:permission_handler/permission_handler.dart';

class ImportEmployeesScreen extends ConsumerWidget {
  const ImportEmployeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final importState = ref.watch(importEmployeesNotifierProvider);
    final importNotifier = ref.read(importEmployeesNotifierProvider.notifier);
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Scaffold(
      appBar: AttendanceAppBar(
        title: 'Importar Empleados',
        centerTitle: true,
        leading: true,
        actions: [
          IconButton(
            onPressed: () => _showInfoDialog(context),
            icon: const Icon(Icons.info_outline),
            tooltip: 'Información',
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(DoubleSizes.size16),
          child: Column(
            spacing: DoubleSizes.size16,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Palette.warning.withValues(alpha: 0.1),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: DoubleSizes.size8,
                    children: [
                      Icon(
                        Icons.warning,
                        color: Palette.warning.withValues(alpha: 0.9),
                      ),
                      Flexible(
                        child: Text(
                          'Aquí puedes importar empleados desde un archivo CSV, XLS o XLSX.',
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Formato del archivo',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'El archivo debe contener las siguientes columnas en este orden:',
              ),
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'firstName, lastName, dni, email, phone, position, department, shiftName',
                    style: TextStyle(fontFamily: 'monospace', fontSize: 12),
                  ),
                ),
              ),
              const Text('Formatos soportados: CSV, XLS, XLSX (máximo 10MB)'),

              const SizedBox(height: DoubleSizes.size16),

              // Mostrar resultado
              _buildResultWidget(context, importState, importNotifier),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.more_vert,
        activeIcon: Icons.close,
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        children: [
          SpeedDialChild(
            foregroundColor: colorScheme.onPrimary,
            backgroundColor: Palette.success,
            child: const Icon(Icons.download),
            label: 'Template',
            onTap: () => _downloadTemplate(context, importNotifier),
          ),
          SpeedDialChild(
            foregroundColor: colorScheme.onSecondary,
            backgroundColor: Palette.blue,
            child: const Icon(Icons.upload_file),
            label: 'Subir Archivo',
            onTap: () => _pickAndUploadFile(context, importNotifier),
          ),
        ],
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
    // Obtener el archivo del estado en lugar de hardcodear la ruta
    final file = (state as dynamic).file as File;
    final filePath = file.path;
    final fileName = file.path.split('/').last;
    final colorScheme = context.appColorScheme;
    final textTheme = context.appTextTheme;

    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(DoubleSizes.size16),
        child: Column(
          spacing: DoubleSizes.size16,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              spacing: DoubleSizes.size8,
              children: [
                Icon(Icons.check_circle, color: Palette.success),
                Expanded(
                  child: Text(
                    'Template descargado exitosamente',
                    style: TextStyle(
                      color: Palette.success,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'El archivo se ha descargado en la carpeta de Descargas.',
              style: textTheme.bodySmall,
            ),
            Text(
              'Nombre: $fileName',
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              spacing: DoubleSizes.size8,
              children: [
                FilledButton.icon(
                  onPressed: () => _openDownloadedFile(filePath),
                  icon: const Icon(Icons.open_in_new),
                  label: const Text('Abrir archivo'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Palette.success,
                    ),
                  ),
                ),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => notifier.resetState(),
                    icon: const Icon(Icons.close),
                    label: const Text('Cerrar'),
                  ),
                ),
              ],
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
    final colorScheme = context.appColorScheme;

    return Card(
      color: response.success
          ? colorScheme.primaryContainer
          : colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(DoubleSizes.size16),
        child: Column(
          spacing: DoubleSizes.size16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: DoubleSizes.size8,
              children: [
                Icon(
                  response.success ? Icons.check_circle : Icons.error,
                  color: response.success
                      ? colorScheme.primary
                      : colorScheme.error,
                ),
                Expanded(
                  child: Text(
                    response.success
                        ? 'Importación completada'
                        : 'Error en la importación',
                    style: TextStyle(
                      color: response.success
                          ? colorScheme.onPrimaryContainer
                          : colorScheme.onErrorContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              response.message,
              style: TextStyle(
                color: response.success
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onErrorContainer,
              ),
            ),
            if (response.success && response.importedCount > 0) ...[
              const SizedBox(height: 8),
              Text(
                'Empleados importados: ${response.importedCount}',
                style: TextStyle(
                  color: colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            if (response.errors.isNotEmpty) ...[
              const SizedBox(height: 12),
              Text(
                'Errores encontrados:',
                style: TextStyle(
                  color: colorScheme.onErrorContainer,
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
                      color: colorScheme.onErrorContainer,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 12),
            OutlinedButton(
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
    final colorScheme = context.appColorScheme;

    return Card(
      color: colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(DoubleSizes.size16),
        child: Column(
          spacing: DoubleSizes.size16,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              spacing: DoubleSizes.size8,
              children: [
                Icon(Icons.error, color: colorScheme.error),
                Expanded(
                  child: Text(
                    'Error',
                    style: TextStyle(
                      color: colorScheme.onErrorContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              message,
              style: TextStyle(color: colorScheme.onErrorContainer),
            ),
            OutlinedButton(
              onPressed: () => notifier.resetState(),
              child: const Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _downloadTemplate(
    BuildContext context,
    ImportEmployeesNotifier notifier,
  ) async {
    PermissionStatus status;

    if (Platform.isAndroid) {
      if (await Permission.manageExternalStorage.isGranted) {
        status = PermissionStatus.granted;
      } else {
        status = await Permission.manageExternalStorage.request();
      }
    } else {
      status = await Permission.storage.request();
    }

    if (!status.isGranted) {
      if (context.mounted) {
        AlertInfo.show(
          context: context,
          text:
              'Se requieren permisos de almacenamiento\npara descargar el archivo.',
          typeInfo: TypeInfo.warning,
        );
      }
      return;
    }

    // Usar el loader con mensaje personalizado
    await showLoader(
      context,
      notifier.downloadTemplate(),
      text: 'Descargando template...',
    );
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

        // Usar el loader con mensaje personalizado para la subida
        if (context.mounted) {
          await showLoader(
            context,
            notifier.uploadEmployeesFile(file),
            text: 'Subiendo archivo...',
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        AlertInfo.show(
          context: context,
          text: 'Error al seleccionar archivo: $e',
          typeInfo: TypeInfo.warning,
        );
      }
    }
  }

  Future<void> _openDownloadedFile(String filePath) async {
    final result = await OpenFilex.open(filePath);

    if (result.type != ResultType.done) {
      debugPrint("No se pudo abrir el archivo: ${result.message}");
    }
  }

  // Mostrar info dialog
  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            spacing: DoubleSizes.size8,
            children: [
              const Icon(Icons.info_outline, color: Palette.info),
              const Text('Información'),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.people_outline, color: Colors.blue),
                  title: const Text(
                    'Aquí puedes crear múltiples empleados a la vez importando un archivo.',
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.warning_amber_outlined,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Asegúrate de que el archivo cumpla con el formato requerido.',
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.warning_amber_outlined,
                    color: Colors.orange,
                  ),
                  title: const Text(
                    'Si hay errores en el archivo, la importación fallará y se mostrará un resumen de los errores.',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}
