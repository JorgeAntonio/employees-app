#### GET /attendance/date/:date

Obtiene todos los empleados con su estado de asistencia para una fecha específica (solo ADMIN).

**Headers:**

```
Authorization: Bearer <admin_token>
```

**Path Parameters:**
- `date` (requerido): Fecha en formato YYYY-MM-DD

**Query Parameters:**
- `department` (opcional): Filtrar por departamento
- `position` (opcional): Filtrar por posición
- `page` (opcional): Número de página (default: 1)
- `limit` (opcional): Elementos por página (default: 10, máximo: 100)

**Response:**

```json
{
  "success": true,
  "data": {
    "date": "2024-01-15",
    "employees": [
      {
        "id": "uuid",
        "firstName": "Juan",
        "lastName": "Pérez",
        "dni": "12345678",
        "position": "Desarrollador",
        "department": "Tecnología",
        "phone": "+1234567890",
        "photoUrl": null,
        "shift": {
          "id": "uuid",
          "name": "Mañana",
          "startTime": "2024-01-15T08:00:00.000Z",
          "endTime": "2024-01-15T17:00:00.000Z"
        },
        "user": {
          "id": "uuid",
          "email": "juan@ejemplo.com"
        },
        "attendance": {
          "id": "uuid",
          "checkInTime": "2024-01-15T08:15:00.000Z",
          "checkOutTime": "2024-01-15T17:30:00.000Z",
          "durationMins": 555,
          "status": "PRESENT",
          "checkInLocation": {
            "id": "uuid",
            "name": "Oficina Principal",
            "latitude": -12.0464,
            "longitude": -77.0428
          },
          "checkOutLocation": {
            "id": "uuid",
            "name": "Oficina Principal",
            "latitude": -12.0464,
            "longitude": -77.0428
          },
          "device": {
            "name": "iPhone 12",
            "os": "iOS",
            "browser": "Safari"
          }
        },
        "attendanceStatus": "completed",
        "statusLabel": "Completado"
      }
    ],
    "stats": {
      "total": 10,
      "present": 8,
      "absent": 1,
      "late": 2,
      "active": 3,
      "completed": 5
    },
    "pagination": {
      "page": 1,
      "limit": 10,
      "total": 150,
      "totalPages": 15
    },
    "filters": {
      "department": "Tecnología",
      "position": null
    }
  }
}
```

**Estados de Asistencia:**
- `absent`: Empleado no se presentó
- `active`: Empleado hizo check-in pero no check-out
- `completed`: Empleado completó su jornada (check-in y check-out)
- `late`: Empleado llegó tarde según su turno

#### GET /attendance/filters

Obtiene las opciones de filtro disponibles (departamentos y posiciones) (solo ADMIN).

**Headers:**

```
Authorization: Bearer <admin_token>
```

**Response:**

```json
{
  "success": true,
  "data": {
    "departments": [
      "Tecnología",
      "Recursos Humanos",
      "Ventas",
      "Marketing",
      "Finanzas"
    ],
    "positions": [
      "Desarrollador",
      "Analista",
      "Gerente",
      "Coordinador",
      "Especialista"
    ]
  }
}
```

#### Ejemplos de Uso

**Obtener asistencia del día actual:**
```bash
GET /api/v1/attendance/date/2024-01-15
```

**Filtrar por departamento:**
```bash
GET /api/v1/attendance/date/2024-01-15?department=Tecnología
```

**Filtrar por departamento y posición:**
```bash
GET /api/v1/attendance/date/2024-01-15?department=Tecnología&position=Desarrollador
```

**Paginación:**
```bash
GET /api/v1/attendance/date/2024-01-15?page=2&limit=20
```

**Combinando filtros y paginación:**
```bash
GET /api/v1/attendance/date/2024-01-15?department=Tecnología&page=1&limit=5
```
