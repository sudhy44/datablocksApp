import 'package:flutter/material.dart';

import 'longTerm.dart';



class TableRowData extends StatelessWidget {
  @override
  
  List<LongTerm> longtermData;

  TableRowData(this.longtermData);

  Widget build(BuildContext context) {
    return Column(
        children: longtermData.map((indData) {
      return Container(
        margin: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        // color: profit == true ? Colors.green[50]:Colors.red[50],
        color: indData.pl > 0 ? Colors.green[50] : Colors.red[50],

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                        child: Text(
                      "${indData.id}",
                      style: TextStyle(fontFamily: 'Poppins'),
                    )),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                        child: Text(
                      "${indData.dat}",
                      style: TextStyle(fontFamily: 'Poppins'),
                    )),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                        child: Text(
                      " ${indData.pl}",
                      style: TextStyle(fontFamily: 'Poppins'),
                    )),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                        child: Text(
                      " ${indData.plper} %",
                      style: TextStyle(fontFamily: 'Poppins'),
                    )),
                  )),
            ],
          ),
        ),
      );
    }).toList());
  }
}
