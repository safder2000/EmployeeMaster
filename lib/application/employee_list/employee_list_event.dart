part of 'employee_list_bloc.dart';

@immutable
abstract class EmployeeListEvent {}

class FetchAllEmpyees extends EmployeeListEvent {
  FetchAllEmpyees();
}

class AddEmployee extends EmployeeListEvent {
  AddEmployee({required this.employeeData});
  EmployeeModel employeeData;
}
