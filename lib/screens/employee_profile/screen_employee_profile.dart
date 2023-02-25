import 'package:employee_master/application/employee_list/employee_list_bloc.dart';
import 'package:employee_master/core/const_colors.dart';
import 'package:employee_master/core/text_styles.dart';
import 'package:employee_master/infrastructure/employee_repo.dart';
import 'package:employee_master/models/employee_model.dart';
import 'package:employee_master/screens/employee_profile/widget/edit_profile_model_sheet.dart';
import 'package:employee_master/screens/employee_profile/widget/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeProfileScreen extends StatelessWidget {
  EmployeeProfileScreen({super.key, required this.data});
  EmployeeModel data;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: darkblue, //change your color here
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () {
                  deleteWarning(context, data);
                },
                icon: const Icon(
                  Icons.delete_outlined,
                  color: Color.fromARGB(255, 146, 87, 83),
                  size: 30,
                )),
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: darkblue,
        onPressed: () {
          editProfileModelSheet(context, data);
        },
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.white,
      ),
      body: BlocBuilder<EmployeeListBloc, EmployeeListState>(
        builder: (context, state) {
          return ListView(children: [
            ProfilePic(screen_size: screenSize),
            Center(
              child: Text(
                // state.employeeList[index].name,
                '${data.name}',
                style: TextStyle(
                    color: darkblue, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${data.code}',
                  style: subtitle,
                ),
                width_20
              ],
            ),
            const Divider(),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Mob.No', style: subtitle),
                          Spacer(),
                          Text('${data.mobileNumber}'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('DOB', style: subtitle),
                          Spacer(),
                          Text('20/02/2000'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: subtitle,
                    ),
                    Divider(),
                    Text('${data.remarks}', maxLines: 20),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Remarks',
                      style: subtitle,
                    ),
                    Divider(),
                    Text('${data.remarks}', maxLines: 20),
                  ],
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}

deleteWarning(BuildContext context, EmployeeModel data) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      EmployeeRepo.deleteEmployee(employee: data);
      Navigator.pop(context);
    },
  );
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Delete Data"),
    content: Text("Deleted data cant be recoverd!"),
    actions: [cancelButton, okButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
