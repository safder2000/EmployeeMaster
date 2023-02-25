import 'package:employee_master/core/const_colors.dart';
import 'package:employee_master/models/employee_model.dart';
import 'package:flutter/material.dart';

class EmployeeTile extends StatelessWidget {
  EmployeeTile({
    required this.emplyeeData,
    Key? key,
  }) : super(key: key);
  EmployeeModel emplyeeData;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.98,
          child: Card(
            child: ListTile(
              title: Text(
                '${emplyeeData.name}',
                style: TextStyle(color: darkblue, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${emplyeeData.code}'),
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 15, 39, 79),
              ),
            ),
          )),
    );
  }
}
