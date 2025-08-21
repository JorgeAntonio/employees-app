import 'package:flutter/material.dart';

class EditEmployeeScreen extends StatelessWidget {
  const EditEmployeeScreen({super.key, required this.employeeId});

  final String employeeId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Employee')),
      body: const Center(child: Text('Edit Employee Screen')),
    );
  }
}
