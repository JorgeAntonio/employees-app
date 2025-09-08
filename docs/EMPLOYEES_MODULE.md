# Módulo de Empleados

Este módulo maneja toda la funcionalidad relacionada con la gestión de empleados en el sistema.

## Estructura del Módulo

- **Controlador**: `src/controllers/employees/employees.controller.ts`
- **Rutas**: `src/routes/employee.route.ts`
- **Esquemas**: `src/schemas/user.schema.ts`
- **Servicio**: `src/services/employee.service.ts`

## Autenticación

Todas las rutas del módulo de empleados requieren autenticación. El middleware `authenticate` se aplica a todas las rutas.

## Endpoints

### 1. Obtener Todos los Empleados

**GET** `/api/v1/employees`

- **Descripción**: Obtiene una lista paginada de todos los empleados
- **Permisos**: Solo ADMIN
- **Query Parameters**:
  - `page` (opcional): Número de página (default: 1)
  - `limit` (opcional): Elementos por página (default: 10)
  - `search` (opcional): Término de búsqueda

**Respuesta exitosa (200)**:
```json
{
  "success": true,
  "data": {
    "employees": [
      {
        "id": "uuid",
        "firstName": "Juan",
        "lastName": "Pérez",
        "dni": "12345678",
        "phone": "+51987654321",
        "photoUrl": "https://example.com/photo.jpg",
        "position": "Desarrollador",
        "department": "IT",
        "shiftId": "uuid",
        "userId": "uuid"
      }
    ],
    "pagination": {
      "page": 1,
      "limit": 10,
      "total": 50,
      "totalPages": 5
    }
  }
}
```

### 2. Obtener Empleado por ID

**GET** `/api/v1/employees/:id`

- **Descripción**: Obtiene un empleado específico por su ID
- **Permisos**: Cualquier usuario autenticado
- **Parámetros**:
  - `id`: ID del empleado (UUID)

**Respuesta exitosa (200)**:
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "firstName": "Juan",
    "lastName": "Pérez",
    "dni": "12345678",
    "phone": "+51987654321",
    "photoUrl": "https://example.com/photo.jpg",
    "position": "Desarrollador",
    "department": "IT",
    "shiftId": "uuid",
    "userId": "uuid"
  }
}
```

**Respuesta de error (404)**:
```json
{
  "success": false,
  "message": "Empleado no encontrado"
}
```

### 3. Crear Nuevo Empleado

**POST** `/api/v1/employees`

- **Descripción**: Crea un nuevo empleado y su usuario asociado
- **Permisos**: Solo ADMIN
- **Validación**: `createEmployeeSchema`

**Body de la petición**:
```json
{
  "email": "juan.perez@empresa.com",
  "password": "password123",
  "firstName": "Juan",
  "lastName": "Pérez",
  "dni": "12345678",
  "phone": "+51987654321",
  "photoUrl": "https://example.com/photo.jpg",
  "position": "Desarrollador",
  "department": "IT",
  "shiftId": "uuid-del-turno"
}
```

**Respuesta exitosa (201)**:
```json
{
  "success": true,
  "data": {
    "user": {
      "id": "uuid",
      "email": "juan.perez@empresa.com",
      "role": "EMPLOYEE"
    },
    "employee": {
      "id": "uuid",
      "firstName": "Juan",
      "lastName": "Pérez",
      "dni": "12345678",
      "phone": "+51987654321",
      "photoUrl": "https://example.com/photo.jpg",
      "position": "Desarrollador",
      "department": "IT",
      "shiftId": "uuid-del-turno",
      "userId": "uuid"
    }
  }
}
```

### 4. Actualizar Empleado

**PUT** `/api/v1/employees/:id`

- **Descripción**: Actualiza los datos de un empleado existente
- **Permisos**: Cualquier usuario autenticado
- **Validación**: `updateEmployeeSchema`
- **Parámetros**:
  - `id`: ID del empleado (UUID)

**Body de la petición** (todos los campos son opcionales):
```json
{
  "firstName": "Juan Carlos",
  "lastName": "Pérez García",
  "phone": "+51987654322",
  "photoUrl": "https://example.com/new-photo.jpg",
  "position": "Senior Developer",
  "department": "IT",
  "shiftId": "nuevo-uuid-del-turno"
}
```

**Respuesta exitosa (200)**:
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "firstName": "Juan Carlos",
    "lastName": "Pérez García",
    "dni": "12345678",
    "phone": "+51987654322",
    "photoUrl": "https://example.com/new-photo.jpg",
    "position": "Senior Developer",
    "department": "IT",
    "shiftId": "nuevo-uuid-del-turno",
    "userId": "uuid"
  }
}
```

### 5. Eliminar Empleado

**DELETE** `/api/v1/employees/:id`

- **Descripción**: Elimina un empleado del sistema
- **Permisos**: Solo ADMIN
- **Parámetros**:
  - `id`: ID del empleado (UUID)

**Respuesta exitosa (200)**:
```json
{
  "success": true,
  "data": {
    "message": "Empleado eliminado correctamente"
  }
}
```

## Importación de Empleados desde Excel

### 6. Descargar Plantilla Excel

**GET** `/api/v1/employees/import/template`

- **Descripción**: Descarga una plantilla Excel para importar empleados
- **Permisos**: Solo ADMIN
- **Respuesta**: Archivo Excel (.xlsx)

### 7. Importar Empleados desde Excel

**POST** `/api/v1/employees/import`

- **Descripción**: Importa empleados desde un archivo Excel
- **Permisos**: Solo ADMIN
- **Content-Type**: `multipart/form-data`
- **Body**: Archivo Excel con el campo `file`

**Respuesta exitosa (200)**:
```json
{
  "success": true,
  "data": {
    "imported": 25,
    "errors": [],
    "message": "Empleados importados correctamente"
  }
}
```

## Esquemas de Validación

### createEmployeeSchema

```typescript
{
  firstName: string (min: 2 caracteres),
  lastName: string (min: 2 caracteres),
  dni: string (min: 8 caracteres),
  phone?: string (opcional),
  photoUrl?: string (URL válida, opcional),
  position: string (min: 2 caracteres),
  department: string (min: 2 caracteres),
  shiftId?: string (UUID, opcional)
}
```

### updateEmployeeSchema

```typescript
{
  firstName?: string (min: 2 caracteres, opcional),
  lastName?: string (min: 2 caracteres, opcional),
  phone?: string (opcional),
  photoUrl?: string (URL válida, opcional),
  position?: string (min: 2 caracteres, opcional),
  department?: string (min: 2 caracteres, opcional),
  shiftId?: string (UUID, opcional)
}
```

## Códigos de Error Comunes

- **400**: Datos de entrada inválidos o faltantes
- **401**: No autenticado
- **403**: Sin permisos suficientes
- **404**: Empleado no encontrado
- **500**: Error interno del servidor

## Ejemplos de Uso

### Crear un empleado con curl

```bash
curl -X POST http://localhost:3000/api/v1/employees \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  -d '{
    "email": "maria.garcia@empresa.com",
    "password": "password123",
    "firstName": "María",
    "lastName": "García",
    "dni": "87654321",
    "phone": "+51987654321",
    "position": "Analista",
    "department": "Recursos Humanos"
  }'
```

### Obtener empleados con paginación

```bash
curl -X GET "http://localhost:3000/api/v1/employees?page=1&limit=5&search=Juan" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

### Actualizar un empleado

```bash
curl -X PUT http://localhost:3000/api/v1/employees/uuid-del-empleado \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  -d '{
    "position": "Senior Analyst",
    "department": "IT"
  }'
```

## Notas Importantes

1. **Creación de Empleados**: Al crear un empleado, se crea automáticamente un usuario asociado con rol `EMPLOYEE`.
2. **Autenticación**: Todas las rutas requieren un token JWT válido.
3. **Permisos**: Las operaciones de creación, eliminación y listado completo están restringidas a usuarios con rol `ADMIN`.
4. **Validación**: Todos los endpoints utilizan esquemas de validación Zod para garantizar la integridad de los datos.
5. **Paginación**: El endpoint de listado incluye paginación automática para mejorar el rendimiento.
6. **Búsqueda**: Se puede filtrar empleados usando el parámetro `search`.
7. **Importación Excel**: Se proporciona funcionalidad completa para importar empleados masivamente desde archivos Excel.