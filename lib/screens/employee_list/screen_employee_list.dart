import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:employee_master/application/employee_list/employee_list_bloc.dart';
import 'package:employee_master/core/const_colors.dart';
import 'package:employee_master/core/text_styles.dart';
import 'package:employee_master/infrastructure/employee_repo.dart';
import 'package:employee_master/models/employee_model.dart';
import 'package:employee_master/screens/employee_list/widgets/add_employee_model_sheet.dart';
import 'package:employee_master/screens/employee_list/widgets/employee_tile.dart';
import 'package:employee_master/screens/employee_profile/screen_employee_profile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeListScreen extends StatelessWidget {
  const EmployeeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkblue,
        toolbarHeight: 70,
        title: const Center(
          child: Text('Employees'),
        ),
        leading: IconButton(
            onPressed: () async {
              // gg = await EmployeeRepo.fetchAllEmpyees();
              // log(gg.toString());
              BlocProvider.of<EmployeeListBloc>(context).add(FetchAllEmpyees());
            },
            icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: darkblue,
        onPressed: () {
          addProfileModelSheet(context);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.white,
      ),
      body: StreamBuilder<List<EmployeeModel>>(
        stream: EmployeeRepo.fetchAllEmpyees(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
                child: Column(
              children: [Text('Error'), CircularProgressIndicator()],
            ));
          } else if (snapshot.hasData) {
            var data = snapshot.data;
            if (data == null || data.isEmpty) {
              return Center(
                child: Text('No Data Found'),
              );
            } else {
              return Column(
                children: [
                  height_10,
                  Row(
                    children: [
                      width_10,
                      Text(
                        'Employees : ${data!.length}',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                  Divider(),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  EmployeeProfileScreen(
                                data: data[index],
                              ),
                            ),
                          );
                        },
                        child: EmployeeTile(
                          emplyeeData: data[index],
                        )),
                  )
                ],
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
