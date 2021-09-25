import 'package:flutter/material.dart';
import '../models/dates.dart';
import 'package:provider/provider.dart';

class Dates{

  List <Date> _dateItems = [
    Date(
      day: 'Pazartesi',
      hour: '09.00-16.00',
      id: 1,

    ),
    Date(
      day: 'Salı',
      hour: '09.00-16.00',
      id: 2,

    ),
    Date(
      day: 'Çarşamba',
      hour: '09.00-16.00',
      id: 3,

    ),
    Date(
      day: 'Perşembe',
      hour: '09.00-16.00',
      id: 4,

    ),
   Date(
      day: 'Cuma',
      hour: '09.00-16.00',
     id: 5,

    ),
    Date(
      day: 'Pazartesi',
      hour: '09.00-16.00',
      id: 6,

    ), Date(
      day: 'Salı',
      hour: '09.00-16.00',
      id: 7,
    ),
  ];

  List <Date> get dateItems {
    return _dateItems;
  }
}
