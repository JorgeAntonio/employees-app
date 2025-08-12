# Módulo de Asistencia con Códigos QR

Este módulo implementa un sistema de asistencia basado en códigos QR únicos para el registro de entrada y salida de empleados.

## Características Principales

- **Códigos QR únicos**: Generación de códigos QR temporales para check-in y check-out
- **Códigos manuales**: Alternativa de códigos alfanuméricos para entrada manual
- **Validación previa**: Los empleados pueden ver sus datos antes de confirmar la asistencia
- **Expiración automática**: Los códigos expiran después de 10 minutos
- **Limpieza automática**: Sistema de limpieza periódica de códigos expirados
- **Control de permisos**: Diferenciación entre empleados y administradores

## Endpoints de la API

### Autenticación
Todos los endpoints requieren autenticación mediante JWT token en el header `Authorization: Bearer <token>`

### 1. Generar Código QR de Entrada

**Empleados:**
```
POST /api/v1/attendance/checkin/qr
Authorization: Bearer <employee_token>
```

**Administradores:**
```
POST /api/v1/attendance/checkin/qr/:employeeId
Authorization: Bearer <admin_token>
```

**Respuesta:**
```json
{
  "success": true,
  "data": {
    "qrCode": "data:image/png;base64,iVBOR...",
    "manualCode": "ABC123",
    "expiresAt": "2024-01-15T10:15:00.000Z",
    "type": "CHECK_IN"
  }
}
```

### 2. Generar Código QR de Salida

**Empleados:**
```
POST /api/v1/attendance/checkout/qr
Authorization: Bearer <employee_token>
```

**Administradores:**
```
POST /api/v1/attendance/checkout/qr/:employeeId
Authorization: Bearer <admin_token>
```

**Respuesta:** Igual que el endpoint de entrada

### 3. Validar Código (QR o Manual)

```
POST /api/v1/attendance/validate
Authorization: Bearer <token>
Content-Type: application/json

{
  "code": "ABC123" // Código QR escaneado o código manual
}
```

**Respuesta:**
```json
{
  "success": true,
  "data": {
    "employee": {
      "id": "emp-123",
      "firstName": "Juan",
      "lastName": "Pérez",
      "email": "juan.perez@company.com",
      "position": "Desarrollador"
    },
    "type": "CHECK_IN",
    "timestamp": "2024-01-15T10:05:00.000Z",
    "location": "Oficina Principal"
  }
}
```

### 4. Confirmar Asistencia

```
POST /api/v1/attendance/confirm
Authorization: Bearer <token>
Content-Type: application/json

{
  "code": "ABC123",
  "confirmed": true, // Opcional, por defecto true
  "locationId": "loc-123", // Opcional - usar ubicación existente
  "latitude": -12.0464, // Opcional - crear nueva ubicación
  "longitude": -77.0428, // Opcional - crear nueva ubicación
  "accuracy": 5.0, // Opcional
  "name": "Mi Ubicación", // Opcional - nombre para nueva ubicación
  "deviceInfo": { // Opcional
    "name": "iPhone 12",
    "os": "iOS",
    "browser": "Safari",
    "userAgent": "Mozilla/5.0..."
  }
}
```

**Respuesta:**
```json
{
  "success": true,
  "data": {
    "id": "att-123",
    "employeeId": "emp-123",
    "type": "CHECK_IN",
    "timestamp": "2024-01-15T10:05:00.000Z",
    "location": "Oficina Principal"
  }
}
```

### 5. Obtener Historial de Asistencia

**Historial personal (Empleados):**
```
GET /api/v1/attendance/history/me?page=1&limit=10&startDate=2024-01-01&endDate=2024-01-31
Authorization: Bearer <employee_token>
```

**Historial de empleado específico (Administradores):**
```
GET /api/v1/attendance/history/:employeeId?page=1&limit=10&startDate=2024-01-01&endDate=2024-01-31
Authorization: Bearer <admin_token>
```

**Historial general (Administradores):**
```
GET /api/v1/attendance/history?page=1&limit=10&startDate=2024-01-01&endDate=2024-01-31
Authorization: Bearer <admin_token>
```

### 6. Obtener Estado Actual de Asistencia

**Estado personal (Empleados):**
```
GET /api/v1/attendance/status/me
Authorization: Bearer <employee_token>
```

**Estado de empleado específico (Administradores):**
```
GET /api/v1/attendance/status/:employeeId
Authorization: Bearer <admin_token>
```

**Respuesta:**
```json
{
  "success": true,
  "data": {
    "isCheckedIn": true,
    "lastCheckIn": "2024-01-15T08:00:00.000Z",
    "lastCheckOut": null,
    "todayDuration": 120, // minutos trabajados hoy
    "currentStatus": "PRESENT"
  }
}
```

### 7. Obtener Perfil del Empleado

```
GET /api/v1/attendance/profile
Authorization: Bearer <employee_token>
```

**Respuesta:**
```json
{
  "success": true,
  "data": {
    "id": "emp-123",
    "firstName": "Juan",
    "lastName": "Pérez",
    "email": "juan.perez@company.com",
    "position": "Desarrollador",
    "user": {
      "id": "user-123",
      "email": "juan.perez@company.com",
      "role": "EMPLOYEE"
    },
    "shift": {
      "id": "shift-123",
      "name": "Turno Mañana",
      "startTime": "08:00:00",
      "endTime": "17:00:00"
    }
  }
}
```

## Flujo de Trabajo

### Para Empleados:

1. **Generar QR de Entrada:**
   - El empleado solicita un código QR para marcar entrada
   - El sistema genera un QR único y un código manual alternativo
   - Ambos códigos expiran en 10 minutos

2. **Escanear/Validar Código:**
   - El empleado escanea el QR o ingresa el código manual
   - El sistema muestra los datos del empleado y la hora actual
   - **Importante:** Este paso NO registra la asistencia, solo valida

3. **Confirmar Asistencia:**
   - El empleado presiona el botón "Confirmar"
   - El sistema registra oficialmente la entrada/salida

4. **Generar QR de Salida:**
   - Similar al proceso de entrada, pero para marcar la salida
   - Solo disponible si el empleado ya marcó entrada

### Para Administradores:

- Pueden generar códigos QR para cualquier empleado
- Tienen acceso a todos los historiales de asistencia
- Pueden consultar el estado de cualquier empleado

## Seguridad

- **Códigos únicos:** Cada código QR/manual es único y no reutilizable
- **Expiración:** Los códigos expiran automáticamente en 10 minutos
- **Autenticación:** Todos los endpoints requieren JWT válido
- **Autorización:** Control de permisos por roles (ADMIN/EMPLOYEE)
- **Limpieza automática:** Sistema de limpieza cada 5 minutos

## Consideraciones Técnicas

- **Base de datos:** Utiliza Prisma ORM con PostgreSQL
- **Códigos QR:** Generados con la librería `qrcode`
- **Códigos manuales:** Generados con `uuid` (6 caracteres)
- **Validación:** Esquemas Zod para validación de entrada
- **Almacenamiento temporal:** Los códigos se almacenan en memoria (Map)

## Estados de Asistencia

- `PRESENT`: Empleado presente (marcó entrada)
- `ABSENT`: Empleado ausente
- `LATE`: Empleado llegó tarde
- `EARLY_DEPARTURE`: Empleado se fue temprano

## Errores Comunes

- **400 Bad Request:** Datos de entrada inválidos
- **401 Unauthorized:** Token JWT inválido o faltante
- **403 Forbidden:** Sin permisos para la operación
- **404 Not Found:** Empleado o código no encontrado
- **410 Gone:** Código expirado
- **500 Internal Server Error:** Error del servidor