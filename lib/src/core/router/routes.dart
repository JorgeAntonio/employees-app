class Routes {
  const Routes._({required this.name, required this.path});
  final String name;
  final String path;

  static Routes get splash => const Routes._(name: 'splash', path: '/splash');

  static Routes get welcome =>
      const Routes._(name: 'welcome', path: '/welcome');

  static Routes get signin => const Routes._(name: 'sign-in', path: '/sign-in');

  static Routes get scanner =>
      const Routes._(name: 'scanner', path: '/scanner');

  static Routes get home => const Routes._(name: 'home', path: '/home');

  static Routes get history =>
      const Routes._(name: 'history', path: '/history');

  static Routes get profile =>
      const Routes._(name: 'profile', path: '/profile');

  static Routes get editProfile =>
      const Routes._(name: 'edit-profile', path: '/edit-profile');

  static Routes get settings =>
      const Routes._(name: 'settings', path: '/settings');

  static Routes get dashboard =>
      const Routes._(name: 'dashboard', path: '/dashboard');

  static Routes get validateCode =>
      const Routes._(name: 'validate-code', path: '/validate-code');

  static Routes get confirmAttendance =>
      const Routes._(name: 'confirm-attendance', path: '/confirm-attendance');

  static Routes get qrReader =>
      const Routes._(name: 'qr-reader', path: '/qr-reader');

  static Routes get attendanceHistory =>
      const Routes._(name: 'attendance-history', path: '/attendance-history');

  static Routes get employees =>
      const Routes._(name: 'employees', path: '/employees');

  static Routes get addEmployee => const Routes._(name: 'add', path: '/add');

  static Routes get editEmployee => const Routes._(name: 'edit', path: '/edit');

  static Routes get importEmployees =>
      const Routes._(name: 'import-employees', path: '/employees/import');

  static Routes get employeesAttendance => const Routes._(
    name: 'employees-attendance',
    path: '/employees/attendance',
  );

  static Routes get info => const Routes._(name: 'info', path: '/info');
}
