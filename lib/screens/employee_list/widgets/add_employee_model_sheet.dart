import 'dart:developer';

import 'package:employee_master/application/employee_list/employee_list_bloc.dart';
import 'package:employee_master/core/const_colors.dart';
import 'package:employee_master/core/text_styles.dart';

import 'package:employee_master/models/employee_model.dart';
import 'package:employee_master/screens/employee_list/widgets/addTextField.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void addProfileModelSheet(context) {
  TextEditingController name_controller = TextEditingController();
  TextEditingController employeeCode_controller = TextEditingController();
  TextEditingController mobileNmber_controller = TextEditingController();
  TextEditingController address_controller = TextEditingController();
  TextEditingController remarks_controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                child: Form(
                  key: _formKey,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      AddModelSheetTextField(
                        controller: name_controller,
                        labelText: 'Name',
                        onChange: (value) {
                          name_controller.text = value;
                        },
                      ),
                      AddModelSheetTextField(
                        labelText: 'Employee Code',
                        controller: employeeCode_controller,
                        onChange: (value) {
                          employeeCode_controller.text = value;
                        },
                      ),
                      AddModelSheetTextField(
                        labelText: 'Mobile Number',
                        controller: mobileNmber_controller,
                        onChange: (value) {
                          mobileNmber_controller.text = value;
                        },
                      ),
                      AddModelSheetTextField(
                        controller: address_controller,
                        labelText: 'Address',
                        onChange: (value) {
                          address_controller.text = value;
                        },
                      ),
                      AddModelSheetTextField(
                        controller: remarks_controller,
                        labelText: 'Remarks',
                        onChange: (value) {
                          remarks_controller.text = value;
                        },
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
                                    Navigator.pop(context);
                                    // context
                                    //     .read<LoginBloc>()
                                    //     .add(LoginSubmitted(context: context));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: darkblue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
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
                                    if (!_formKey.currentState!.validate()) {
                                      log('error');
                                    } else {
                                      // EmployeeRepo.AddEmployee(
                                      //     employee: EmployeeModel(
                                      //         name: name_controller.text.trim(),
                                      //         code: employeeCode_controller.text
                                      //             .trim(),
                                      //         remarks: remarks_controller.text
                                      //             .trim(),
                                      //         address: address_controller.text
                                      //             .trim(),
                                      //         mobileNumber:
                                      //             mobileNmber_controller.text
                                      //                 .trim()));
                                      BlocProvider.of<EmployeeListBloc>(context)
                                          .add(
                                        AddEmployee(
                                          employeeData: EmployeeModel(
                                              name: name_controller.text.trim(),
                                              address: address_controller.text
                                                  .trim(),
                                              mobileNumber:
                                                  mobileNmber_controller.text
                                                      .trim(),
                                              code: employeeCode_controller.text
                                                  .trim(),
                                              remarks: remarks_controller.text
                                                  .trim()),
                                        ),
                                      );
                                      Navigator.pop(context);
                                    }

                                    // context
                                    //     .read<LoginBloc>()
                                    //     .add(LoginSubmitted(context: context));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: lightblue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.add),
                                      Text(
                                        ' Add',
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
              ),
            ));
      });
}
