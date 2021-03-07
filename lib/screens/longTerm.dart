import 'dart:ffi';
import 'package:flutter/material.dart';

class LongTerm {
  int id;
  String dat;
  double pl;
  double plper;
  bool profit;
  LongTerm(
      {@required this.profit,
        @required this.id,
      @required this.dat,
      @required this.pl,
      @required this.plper});
}
