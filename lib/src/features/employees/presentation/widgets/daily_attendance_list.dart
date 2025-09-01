import 'package:attendance_app/src/core/shared/layout/layout.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/calendar_provider.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:attendance_app/src/features/employees/presentation/widgets/attendance_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

class DailyAttendanceList extends HookConsumerWidget {
  const DailyAttendanceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final isLoadingMore = useState(false);
    final isLoadingInitial = useState(false);
    final lastLoadedDate = useState<DateTime?>(null);

    // Obtener el estado del calendario y asistencia
    final calendarState = ref.watch(calendarNotifierProvider);
    final attendanceAsync = ref.watch(dailyAttendanceNotifierProvider);
    final selectedDate = calendarState.selectedDate;

    // Función para cargar datos iniciales con fecha específica
    void loadInitialData([DateTime? specificDate]) {
      if (isLoadingInitial.value) return;

      final dateToUse = specificDate ?? selectedDate;
      isLoadingInitial.value = true;

      // Cargar los datos en el siguiente frame
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Actualizar la fecha en el provider AQUÍ
        ref
            .read(dailyAttendanceRequestNotifierProvider.notifier)
            .updateDate(dateToUse);

        final request = ref.read(dailyAttendanceRequestNotifierProvider);

        // AHORA invalidar justo antes de cargar
        ref.invalidate(dailyAttendanceNotifierProvider);

        ref
            .read(dailyAttendanceNotifierProvider.notifier)
            .loadDailyAttendance(request)
            .then((_) {
              isLoadingInitial.value = false;
            })
            .catchError((error) {
              Logger().e('❌ Error loading data: $error');
              isLoadingInitial.value = false;
            });
      });
    }

    // Función para cargar más datos (scroll infinito)
    Future<void> loadMoreData() async {
      if (isLoadingMore.value) return;

      final currentState = ref.read(dailyAttendanceNotifierProvider);
      if (!currentState.hasValue || currentState.value?.data == null) return;

      final currentData = currentState.value!.data!;
      final pagination = currentData.pagination;

      // Verificar si hay más páginas disponibles
      if (pagination.page >= pagination.totalPages) return;

      isLoadingMore.value = true;

      try {
        // Actualizar la página en el request
        ref
            .read(dailyAttendanceRequestNotifierProvider.notifier)
            .updatePage(pagination.page + 1);

        final request = ref.read(dailyAttendanceRequestNotifierProvider);

        // Cargar más datos
        await ref
            .read(dailyAttendanceNotifierProvider.notifier)
            .loadMoreAttendance(request);
      } catch (e) {
        debugPrint('Error loading more data: $e');
      } finally {
        isLoadingMore.value = false;
      }
    }

    // Función para refresh
    Future<void> onRefresh() async {
      if (isLoadingInitial.value) return;

      try {
        isLoadingInitial.value = true;

        // Resetear a la primera página
        ref.read(dailyAttendanceRequestNotifierProvider.notifier).updatePage(1);

        // Actualizar con la fecha actual seleccionada
        ref
            .read(dailyAttendanceRequestNotifierProvider.notifier)
            .updateDate(selectedDate);

        // Limpiar el estado primero
        ref.invalidate(dailyAttendanceNotifierProvider);

        final request = ref.read(dailyAttendanceRequestNotifierProvider);
        await ref
            .read(dailyAttendanceNotifierProvider.notifier)
            .loadDailyAttendance(request);
      } catch (e) {
        debugPrint('Error during refresh: $e');
      } finally {
        isLoadingInitial.value = false;
      }
    }

    // Listener para el scroll
    void onScroll() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          !isLoadingMore.value) {
        loadMoreData();
      }
    }

    // Hook para manejar el scroll listener
    useEffect(() {
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    // Hook para detectar cambios de fecha y cargar datos
    useEffect(() {
      final currentDate = DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
      );

      final lastDate = lastLoadedDate.value;

      // Comparar solo si cambió la fecha (día, mes o año)
      final shouldLoad =
          lastDate == null ||
          currentDate.year != lastDate.year ||
          currentDate.month != lastDate.month ||
          currentDate.day != lastDate.day;

      if (shouldLoad) {
        lastLoadedDate.value = currentDate;

        // Cargar datos directamente con la nueva fecha
        WidgetsBinding.instance.addPostFrameCallback((_) {
          loadInitialData(selectedDate);
        });
      }
      return null;
    }, [selectedDate]);

    return attendanceAsync.when(
      data: (attendanceResponse) {
        if (attendanceResponse?.data?.employees.isEmpty ?? true) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.event_busy, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text(
                  'No hay registros de asistencia para esta fecha',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        final employees = attendanceResponse!.data!.employees;

        return RefreshIndicator(
          onRefresh: onRefresh,
          child: ListView.separated(
            controller: scrollController,
            padding: const EdgeInsets.all(DoubleSizes.size16),
            physics: const BouncingScrollPhysics(),
            itemCount: employees.length + (isLoadingMore.value ? 1 : 0),
            separatorBuilder: (context, index) {
              if (index >= employees.length) return const SizedBox.shrink();
              return const SizedBox(height: DoubleSizes.size12);
            },
            itemBuilder: (context, index) {
              // Mostrar indicador de carga al final de la lista
              if (index >= employees.length) {
                return const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              final attendance = employees[index];
              return AttendanceCard(attendance: attendance);
            },
          ),
        );
      },
      loading: () => const Center(child: LoadingWidget()),
      error: (error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Error al cargar la asistencia: $error',
              style: const TextStyle(fontSize: 16, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                try {
                  loadInitialData();
                } catch (e) {
                  debugPrint('Error during retry: $e');
                }
              },
              child: const Text('Reintentar'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
