import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/longTerm.dart';
import 'package:reactive_forms/reactive_forms.dart';
import './longtermtitlecard.dart';
import './tablerow.dart';
import 'dart:developer';

class LongTermScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _LongTermScreenState createState() => _LongTermScreenState();
}

class _LongTermScreenState extends State<LongTermScreen> {
  addnewEntry() {
    setState(() {
      LongTerm(
          id: 29, dat: '01 Mar 2021', pl: 150.00, plper: 1.50, profit: true);
    });
  }

  Function addNewRowFunction;
  List<LongTerm> data = [
    // new LongTerm(
    //     id: 1, dat: '01 Mar 2021', pl: 150.00, plper: 1.50, profit: true),
    // new LongTerm(
    //     id: 2, dat: '01 Mar 2021', pl: 150.00, plper: 1.50, profit: false),
    // new LongTerm(
    //     id: 3, dat: '01 Mar 2021', pl: 150.00, plper: 1.50, profit: true),
    // new LongTerm(
    //     id: 4, dat: '01 Mar 2021', pl: 150.00, plper: 1.50, profit: false),
    // new LongTerm(
    //     id: 5, dat: '01 Mar 2021', pl: 150.00, plper: 1.50, profit: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          LongTermTitleCard(data),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                      color: Colors.white,
                      onPressed: openBottonSheet,
                      child: Text("Add New Entry",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500))),
                  
                ],
              ),
            ),
          ),
          TableRowData(data)
        ],
      ),
    );
  }

  void openBottonSheet() {
    final form = FormGroup({
      'id': FormControl<int>(
          validators: [Validators.number, Validators.required]),
      'dat': FormControl(validators: [Validators.required]),
      'pl': FormControl(validators: [ Validators.required]),
      'plper':
          FormControl(validators: [ Validators.required]),
    });

    showModalBottomSheet(
      isScrollControlled:
          true, // Important: Makes content maxHeight = full device height
      context: context,
      builder: (context) {
        // Does not work
        return AnimatedPadding(
          padding: MediaQuery.of(context).viewInsets,
          duration: const Duration(milliseconds: 100),
          curve: Curves.decelerate,
          child: Container(
              height: 300.00,
              // margin: EdgeInsets.all(20.00),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0))),
              child: new Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ReactiveForm(
                        formGroup: form,
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: ReactiveTextField(
                                formControlName: 'id',
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      'The Id must not be empty',
                                  ValidationMessage.pattern:
                                      'The Id must be a Number'
                                },
                                cursorColor: Colors.blueAccent,
                                cursorWidth: 2.00,
                                cursorRadius: Radius.circular(10.0),
                                decoration: InputDecoration(
                                    labelText: "Id",
                                    border: OutlineInputBorder(),
                                    suffixIcon: Icon(
                                        Icons.format_list_numbered_outlined)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: ReactiveTextField(
                                formControlName: 'dat',
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      'The Date must not be empty',
                                  ValidationMessage.pattern:
                                      'The Date must not be empty'
                                },
                                cursorColor: Colors.blueAccent,
                                cursorWidth: 2.00,
                                cursorRadius: Radius.circular(10.0),
                                decoration: InputDecoration(
                                    labelText: "Date",
                                    border: OutlineInputBorder(),
                                    suffixIcon:
                                        Icon(Icons.calendar_today_outlined)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: ReactiveTextField(
                                formControlName: 'pl',
                                validationMessages: (control) => {
                                  ValidationMessage.required:
                                      'The Id must not be empty',
                                  ValidationMessage.pattern:
                                      'The Id must be a Number'
                                },
                                cursorColor: Colors.blueAccent,
                                cursorWidth: 2.00,
                                cursorRadius: Radius.circular(10.0),
                                decoration: InputDecoration(
                                    labelText: "P & L",
                                    border: OutlineInputBorder(),
                                    suffixIcon:
                                        Icon(Icons.attach_money_outlined)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: ReactiveTextField(
                                  formControlName: 'plper',
                                  validationMessages: (control) => {
                                        ValidationMessage.required:
                                            'The Id must not be empty',
                                        ValidationMessage.pattern:
                                            'The Id must be a Number'
                                      },
                                  cursorColor: Colors.blueAccent,
                                  cursorWidth: 2.00,
                                  cursorRadius: Radius.circular(10.0),
                                  decoration: InputDecoration(
                                    labelText: "P & L Percentage",
                                    border: OutlineInputBorder(),
                                    suffixIcon:
                                        Icon(Icons.markunread_mailbox_outlined),
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel',
                                      style: TextStyle(color: Colors.white)),
                                  color: Colors.redAccent,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    if (form.valid) {
                                    
                                      var newRowData = LongTerm(
                                          id: form.control('id').value,
                                          dat: form.control('dat').value,
                                          pl: double.parse(form.control('pl').value),
                                          plper: double.parse(form.control('plper').value),
                                          profit: true);

                                      print(LongTerm);
                                      setState(() {
                                        data.insert(0, newRowData);
                                        Navigator.pop(context);
                                      });
                                    }
                                  },
                                  child: Text('Save',
                                      style: TextStyle(color: Colors.white)),
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
              )),
        );
      },
    );
  }
}
