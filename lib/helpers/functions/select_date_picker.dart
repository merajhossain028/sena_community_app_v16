import 'package:flutter/material.dart';

Future<DateTime> selectDateFromPicker(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030));
  if (picked != null) {
    return picked;
  }
  return DateTime.now();
}