// Create week date picker with passed parameters
import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';

Widget buildWeekDatePicker(
  DateTime selectedDate,
  DateTime firstAllowedDate,
  DateTime lastAllowedDate,
  ValueChanged<DatePeriod> onNewSelected,
) {
  // add some colors to default settings
  DatePickerRangeStyles styles = DatePickerRangeStyles(
    selectedPeriodLastDecoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(10.0),
        bottomEnd: Radius.circular(10.0),
      ),
    ),
    selectedPeriodStartDecoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(10.0),
        bottomStart: Radius.circular(10.0),
      ),
    ),
    selectedPeriodMiddleDecoration: BoxDecoration(
      color: Colors.yellow,
      shape: BoxShape.rectangle,
    ),
  );

  return WeekPicker(
    selectedDate: selectedDate,
    onChanged: onNewSelected,
    firstDate: firstAllowedDate,
    lastDate: lastAllowedDate,
    datePickerStyles: styles,
  );
}
