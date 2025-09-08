import 'package:attendance_app/src/features/employees/domain/entities/update_employee_request.dart';
import 'package:attendance_app/src/features/employees/domain/entities/update_employee_response.dart';
import 'package:attendance_app/src/features/employees/presentation/providers/employees_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_providers.g.dart';

// Estado para el formulario de edición de perfil
@riverpod
class EditProfileFormNotifier extends _$EditProfileFormNotifier {
  @override
  EditProfileFormState build() {
    return const EditProfileFormState();
  }

  void updateField(String field, String? value) {
    state = state.copyWith(field: field, value: value);
  }

  void resetForm() {
    state = const EditProfileFormState();
  }

  void setInitialData({
    required String firstName,
    required String lastName,
    required String phone,
    required String position,
    required String department,
    String? shiftId,
  }) {
    state = EditProfileFormState(
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      position: position,
      department: department,
      shiftId: shiftId,
    );
  }

  UpdateEmployeeRequest toUpdateRequest() {
    return UpdateEmployeeRequest(
      firstName: state.firstName?.isNotEmpty == true ? state.firstName : null,
      lastName: state.lastName?.isNotEmpty == true ? state.lastName : null,
      phone: state.phone?.isNotEmpty == true ? state.phone : null,
      position: state.position?.isNotEmpty == true ? state.position : null,
      department: state.department?.isNotEmpty == true
          ? state.department
          : null,
      shiftId: state.shiftId?.isNotEmpty == true ? state.shiftId : null,
    );
  }
}

// Estado para manejar la actualización del perfil
@riverpod
class UpdateProfileNotifier extends _$UpdateProfileNotifier {
  @override
  AsyncValue<UpdateEmployeeResponse?> build() {
    return const AsyncValue.data(null);
  }

  Future<void> updateProfile(
    String employeeId,
    UpdateEmployeeRequest request,
  ) async {
    state = const AsyncValue.loading();

    try {
      final updateUseCase = ref.read(updateOnlyEmployeeUseCaseProvider);
      final result = await updateUseCase(employeeId, request);

      result.fold(
        (failure) => state = AsyncValue.error(failure, StackTrace.current),
        (response) => state = AsyncValue.data(response),
      );
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  void reset() {
    state = const AsyncValue.data(null);
  }
}

// Estado del formulario
class EditProfileFormState {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? position;
  final String? department;
  final String? shiftId;

  const EditProfileFormState({
    this.firstName,
    this.lastName,
    this.phone,
    this.position,
    this.department,
    this.shiftId,
  });

  EditProfileFormState copyWith({required String field, String? value}) {
    switch (field) {
      case 'firstName':
        return EditProfileFormState(
          firstName: value,
          lastName: lastName,
          phone: phone,
          position: position,
          department: department,
          shiftId: shiftId,
        );
      case 'lastName':
        return EditProfileFormState(
          firstName: firstName,
          lastName: value,
          phone: phone,
          position: position,
          department: department,
          shiftId: shiftId,
        );
      case 'phone':
        return EditProfileFormState(
          firstName: firstName,
          lastName: lastName,
          phone: value,
          position: position,
          department: department,
          shiftId: shiftId,
        );
      case 'position':
        return EditProfileFormState(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          position: value,
          department: department,
          shiftId: shiftId,
        );
      case 'department':
        return EditProfileFormState(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          position: position,
          department: value,
          shiftId: shiftId,
        );
      case 'shiftId':
        return EditProfileFormState(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          position: position,
          department: department,
          shiftId: value,
        );
      default:
        return this;
    }
  }
}
