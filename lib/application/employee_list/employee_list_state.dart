part of 'employee_list_bloc.dart';

@immutable
class InitialState extends EmployeeListState {
  InitialState()
      : super(
          employeeList: [],
        );
}

class EmployeeListState {
  EmployeeListState({
    required this.employeeList,
  });

  List<EmployeeModel> employeeList;
}

class AddEmployeeSate {
  AddEmployeeSate({
    required this.employeeData,
  });

  EmployeeModel employeeData;
}
