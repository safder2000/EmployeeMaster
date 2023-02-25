import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_master/models/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeRepo {
  static Stream<List<EmployeeModel>> fetchAllEmpyees() =>
      FirebaseFirestore.instance.collection('employee_list').snapshots().map(
          (snapshot) => snapshot.docs
              .map((doc) => EmployeeModel.fromJson(doc.data()))
              .toList());

  static AddEmployee({
    required EmployeeModel employee,
  }) async {
    try {
      final employee_list_path = FirebaseFirestore.instance
          .collection('employee_list')
          .doc(employee.code);
      final json = employee.toJson();
      log(json.toString());
      await employee_list_path.set(json);
    } catch (e) {
      print(e);
    }
  }

  static EditEmployee({
    required EmployeeModel employee,
  }) async {
    try {
      final employee_list_path = FirebaseFirestore.instance
          .collection('employee_list')
          .doc(employee.code);
      final json = employee.toJson();
      log(json.toString());
      await employee_list_path.set(json);
    } catch (e) {
      print(e);
    }
  }

  static deleteEmployee({
    required EmployeeModel employee,
  }) async {
    try {
      final employee_list_path = FirebaseFirestore.instance
          .collection('employee_list')
          .doc(employee.code);

      await employee_list_path.delete();
    } catch (e) {
      print(e);
    }
  }
}
