class StatusTextUtil {
  static String getStatusText(String status) => _getStatusText(status);
  // Mapea los estados a textos amigables en español
  static String _getStatusText(String status) {
    switch (status.toUpperCase()) {
      case 'PRESENT':
        return 'Presente';
      case 'LATE':
        return 'Tardanza';
      case 'ABSENT':
        return 'Ausente';
      default:
        return 'Desconocido';
    }
  }
}
