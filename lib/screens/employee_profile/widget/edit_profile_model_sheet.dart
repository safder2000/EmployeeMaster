import 'package:employee_master/core/const_colors.dart';
import 'package:employee_master/core/text_styles.dart';
import 'package:employee_master/infrastructure/employee_repo.dart';
import 'package:employee_master/models/employee_model.dart';
import 'package:employee_master/screens/employee_profile/widget/editTextField.dart';
import 'package:flutter/material.dart';

void editProfileModelSheet(context, EmployeeModel data) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (builder) {
        return Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ModelSheetTextField(
                      labelText: 'Name',
                      initialValue: '${data.name}',
                      onChange: () {},
                    ),
                    ModelSheetTextField(
                      labelText: 'Employee Code',
                      initialValue: '${data.code}',
                      onChange: () {},
                    ),
                    ModelSheetTextField(
                      labelText: 'Mobile Number',
                      initialValue: '${data.mobileNumber}',
                      onChange: () {},
                    ),
                    ModelSheetTextField(
                      labelText: 'Address',
                      initialValue: '${data.address}',
                      onChange: () {},
                    ),
                    ModelSheetTextField(
                      labelText: 'Remarks',
                      initialValue: '${data.remarks}',
                      onChange: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            // width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                                onPressed: () {
                                  // context
                                  //     .read<LoginBloc>()
                                  //     .add(LoginSubmitted(context: context));
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: darkblue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(12), // <-- Radius
                                  ),
                                ),
                                child: const Icon(Icons.close)),
                          ),
                          width_10,
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  // EmployeeRepo.EditEmployee(employee: )
                                  // context
                                  //     .read<LoginBloc>()
                                  //     .add(LoginSubmitted(context: context));
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: lightblue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(12), // <-- Radius
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.save),
                                    Text(
                                      ' save',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      });
}
