import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:employee_master/infrastructure/employee_repo.dart';
import 'package:employee_master/models/employee_model.dart';
import 'package:meta/meta.dart';

part 'employee_list_event.dart';
part 'employee_list_state.dart';

class EmployeeListBloc extends Bloc<EmployeeListEvent, EmployeeListState> {
  EmployeeListBloc() : super(InitialState()) {
    on<EmployeeListEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FetchAllEmpyees>((event, emit) async {
      try {
        final Stream<List<EmployeeModel>> _employeedetail =
            EmployeeRepo.fetchAllEmpyees();
        var gg = await _employeedetail.first;
        log(gg.toString());
        emit(EmployeeListState(employeeList: gg));
      } catch (e) {
        print('Bloc erorr (EmployeeListBloc) >>>>> $e');
      }
    });
    on<AddEmployee>((event, emit) async {
      await EmployeeRepo.AddEmployee(employee: event.employeeData);
      emit(state);
    });
  }
}
