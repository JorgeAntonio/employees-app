# Implementación de Edición de Empleados

## Resumen de la Implementación

Se ha implementado completamente la funcionalidad de edición de empleados siguiendo el patrón de arquitectura establecido en el proyecto (Clean Architecture + Riverpod).

## Cambios Realizados

### 1. Modelo de Respuesta
- **Archivo**: `lib/src/features/employees/data/models/update_employee_response/update_employee_response_model.dart`
- **Descripción**: Modelo Freezed para manejar la respuesta de la API de actualización de empleados.

### 2. DataSource
- **Archivo**: `lib/src/features/employees/domain/datasources/api/employees_datasource.dart`
- **Cambio**: Agregado método `updateEmployee` al contrato abstracto.
- **Archivo**: `lib/src/features/employees/data/datasources/api/employees_datasource_impl.dart`
- **Cambio**: Implementado método `updateEmployee` que hace PUT a `/employees/:id/complete`.

### 3. Repository
- **Archivo**: `lib/src/features/employees/domain/repositories/employees_repository.dart`
- **Cambio**: Ya tenía el método `updateUserEmployee` definido.
- **Archivo**: `lib/src/features/employees/data/repositories/employees_repository_impl.dart`
- **Cambio**: Implementado método `updateUserEmployee` que transforma la respuesta de actualización.

### 4. Caso de Uso
- **Archivo**: `lib/src/features/employees/domain/usecases/update_employee_usecase.dart`
- **Descripción**: Nuevo caso de uso para actualizar empleados.

### 5. Providers
- **Archivo**: `lib/src/features/employees/presentation/providers/employees_providers.dart`
- **Cambios**:
  - Agregado provider para `UpdateEmployeeUseCase`
  - Agregado `UpdateEmployeeNotifier` para manejar el estado de actualización
  - El notifier invalida automáticamente la lista de empleados después de actualizar

### 6. Pantalla de Edición
- **Archivo**: `lib/src/features/employees/presentation/screens/edit_employee_screen.dart`
- **Descripción**: Pantalla completa de edición basada en la pantalla de agregar empleado con las siguientes características:
  - Carga automática de datos del empleado al inicializar
  - Formulario pre-poblado con datos existentes
  - Validación de campos
  - Contraseña opcional (se puede dejar vacía para mantener la actual)
  - Integración con Riverpod para manejo de estado
  - Navegación automática después de actualización exitosa
  - Manejo de errores con alertas

## Flujo de Navegación

1. **Desde Lista de Empleados**: El usuario toca el botón de editar en los detalles de un empleado
2. **Navegación**: Se navega a `/employees/edit/:id` donde `:id` es el ID del empleado
3. **Carga de Datos**: La pantalla carga automáticamente los datos del empleado usando `getEmployeeById`
4. **Edición**: El usuario modifica los campos deseados
5. **Actualización**: Al enviar, se llama a la API PUT `/employees/:id/complete`
6. **Respuesta**: Se muestra un mensaje de éxito/error y se navega de vuelta

## API Utilizada

**Endpoint**: `PUT /api/v1/employees/:id/complete`  
**Permisos**: Solo ADMIN  
**Parámetros de Ruta**: `id` (string): ID del empleado  

**Respuesta Exitosa**:
```json
{
  "success": true,
  "data": {
    "id": "employee-id",
    "userId": "user-id",
    "firstName": "Nombre Actualizado",
    "lastName": "Apellido",
    "dni": "12345678",
    "phone": "123456789",
    "photoUrl": "url",
    "position": "Cargo",
    "department": "Departamento",
    "shiftId": "shift-id",
    "user": { ... },
    "shift": { ... }
  }
}
```

**Respuesta de Error**:
```json
{
  "success": false,
  "message": "Empleado no encontrado | El turno especificado no existe | El email ya está registrado"
}
```

## Características Implementadas

✅ Carga automática de datos del empleado  
✅ Formulario pre-poblado  
✅ Validación de campos  
✅ Contraseña opcional en edición  
✅ Dropdown de turnos con datos actualizados  
✅ Manejo de estados de carga  
✅ Manejo de errores  
✅ Navegación automática  
✅ Invalidación automática de cache  
✅ Integración completa con Riverpod  
✅ Seguimiento del patrón establecido  

## Archivos Generados

Los siguientes archivos se generaron automáticamente con `build_runner`:
- `update_employee_response_model.freezed.dart`
- `update_employee_response_model.g.dart`
- Actualizaciones en `employees_providers.g.dart`

## Notas Técnicas

1. **Reutilización**: Se reutiliza el mismo `CreateEmployeeRequest` para la actualización, siguiendo el patrón de la API.
2. **Estado**: Se usa `AsyncValue` para manejar estados de carga, éxito y error.
3. **Navegación**: Se integra con go_router usando rutas parametrizadas.
4. **Validación**: Se mantienen las mismas validaciones que en crear empleado, excepto la contraseña que es opcional.
5. **Cache**: Se invalida automáticamente el cache de empleados después de una actualización exitosa.

La implementación está completa y sigue las mejores prácticas del proyecto.
