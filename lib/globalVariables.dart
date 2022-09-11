// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:gym_owner_app/models/memberAttendencesRowData.dart';
import 'package:gym_owner_app/models/memberData.dart';
import 'models/barChartModel.dart';

final List<BarChartModel> data = [
  BarChartModel(
      day: "12:00 pm",
      attendences: 100,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey)),
  BarChartModel(
      day: "1:00 pm",
      attendences: 100,
      color: charts.ColorUtil.fromDartColor(Colors.blueGrey)),
  BarChartModel(
      day: "2:00 pm",
      attendences: 5,
      color: charts.ColorUtil.fromDartColor(Colors.redAccent)),
  BarChartModel(
      day: "3:00 pm",
      attendences: 200,
      color: charts.ColorUtil.fromDartColor(Colors.green)),
  BarChartModel(
      day: "4:00 pm",
      attendences: 5,
      color: charts.ColorUtil.fromDartColor(Colors.purple)),
  BarChartModel(
      day: "5:00 pm",
      attendences: 500,
      color: charts.ColorUtil.fromDartColor(Colors.deepOrange)),
  BarChartModel(
      day: "6:00 pm",
      attendences: 56,
      color: charts.ColorUtil.fromDartColor(Colors.teal)),
  BarChartModel(
      day: "7:00 pm",
      attendences: 32,
      color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
  BarChartModel(
      day: "8:00 pm",
      attendences: 67,
      color: charts.ColorUtil.fromDartColor(Colors.indigoAccent)),
  BarChartModel(
      day: "9:00 pm",
      attendences: 54,
      color: charts.ColorUtil.fromDartColor(Colors.deepPurpleAccent)),
  BarChartModel(
      day: "10:00 pm",
      attendences: 54,
      color: charts.ColorUtil.fromDartColor(Colors.green)),
  BarChartModel(
      day: "11:00 pm",
      attendences: 89,
      color: charts.ColorUtil.fromDartColor(Colors.greenAccent)),
  BarChartModel(
      day: "12:00 pm",
      attendences: 56,
      color: charts.ColorUtil.fromDartColor(Colors.lime)),
  BarChartModel(
      day: "1:00 pm",
      attendences: 100,
      color: charts.ColorUtil.fromDartColor(Colors.red)),
  BarChartModel(
      day: "2:00 pm",
      attendences: 23,
      color: charts.ColorUtil.fromDartColor(Colors.teal)),
  BarChartModel(
      day: "3:00 pm",
      attendences: 56,
      color: charts.ColorUtil.fromDartColor(Colors.lightGreen)),
  BarChartModel(
      day: "4:00 pm",
      attendences: 97,
      color: charts.ColorUtil.fromDartColor(Colors.brown)),
  BarChartModel(
      day: "5:00 pm",
      attendences: 98,
      color: charts.ColorUtil.fromDartColor(Colors.green)),
  BarChartModel(
      day: "6:00 pm",
      attendences: 78,
      color: charts.ColorUtil.fromDartColor(Colors.orange)),
  BarChartModel(
      day: "7:00 pm",
      attendences: 23,
      color: charts.ColorUtil.fromDartColor(Colors.pink)),
  BarChartModel(
      day: "8:00 pm",
      attendences: 66,
      color: charts.ColorUtil.fromDartColor(Colors.purple)),
  BarChartModel(
      day: "9:00 pm",
      attendences: 42,
      color: charts.ColorUtil.fromDartColor(Colors.yellow)),
  BarChartModel(
      day: "10:00 pm",
      attendences: 34,
      color: charts.ColorUtil.fromDartColor(Colors.blue)),
  BarChartModel(
      day: "11:00 pm",
      attendences: 56,
      color: charts.ColorUtil.fromDartColor(Colors.green)),
  BarChartModel(
      day: "12:00 am",
      attendences: 7,
      color: charts.ColorUtil.fromDartColor(Colors.red)),
];

List<MemberAttendencesRowData> rowData = [
  MemberAttendencesRowData(
    age: '12',
    creationDate: '12/3/2023',
    id: '3ee9',
    name: 'Medhat Ahmed',
  ),
  MemberAttendencesRowData(
    age: '34',
    creationDate: '12/3/2023',
    id: '3eo39',
    name: 'Medhat Ahmed',
  ),
  MemberAttendencesRowData(
    age: '23',
    creationDate: '12/3/2023',
    id: '4i8i',
    name: 'Omar Ahmed',
  ),
  MemberAttendencesRowData(
    age: '49',
    creationDate: '12/3/2023',
    id: '34f99',
    name: 'hamza Ahmed',
  ),
  MemberAttendencesRowData(
    age: '29',
    creationDate: '12/3/2023',
    id: '3432',
    name: 'Mina Ahmed',
  ),
  MemberAttendencesRowData(
    age: '24',
    creationDate: '12/3/2023',
    id: 'rff33',
    name: 'Youssef Ahmed',
  ),
  MemberAttendencesRowData(
    age: '23',
    creationDate: '12/3/2023',
    id: 'wwws333',
    name: 'Hazem Ahmed',
  ),
  MemberAttendencesRowData(
    age: '94',
    creationDate: '12/3/2023',
    id: '3dj83',
    name: 'Daniel Ahmed',
  ),
  MemberAttendencesRowData(
    age: '21',
    creationDate: '12/3/2023',
    id: '3dj8d3',
    name: 'Omar Ahmed',
  ),
  MemberAttendencesRowData(
    age: '12',
    creationDate: '12/3/2023',
    id: '3ee9',
    name: 'Medhat Ahmed',
  ),
  MemberAttendencesRowData(
    age: '34',
    creationDate: '12/3/2023',
    id: '3eo39',
    name: 'Medhat Ahmed',
  ),
  MemberAttendencesRowData(
    age: '23',
    creationDate: '12/3/2023',
    id: '4i8i',
    name: 'Omar Ahmed',
  ),
  MemberAttendencesRowData(
    age: '49',
    creationDate: '12/3/2023',
    id: '34f99',
    name: 'hamza Ahmed',
  ),
  MemberAttendencesRowData(
    age: '29',
    creationDate: '12/3/2023',
    id: '3432',
    name: 'Mina Ahmed',
  ),
  MemberAttendencesRowData(
    age: '24',
    creationDate: '12/3/2023',
    id: 'rff33',
    name: 'Youssef Ahmed',
  ),
  MemberAttendencesRowData(
    age: '23',
    creationDate: '12/3/2023',
    id: 'wwws333',
    name: 'Hazem Ahmed',
  ),
  MemberAttendencesRowData(
    age: '94',
    creationDate: '12/3/2023',
    id: '3dj83',
    name: 'Daniel Ahmed',
  ),
  MemberAttendencesRowData(
    age: '21',
    creationDate: '12/3/2023',
    id: '3dj8d3',
    name: 'Omar Ahmed',
  ),
];

MemberData pickedMember;
