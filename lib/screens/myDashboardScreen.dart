// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gym_owner_app/globalVariables.dart';
import 'package:gym_owner_app/models/barChartModel.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:gym_owner_app/models/memberAttendencesRowData.dart';
import 'package:gym_owner_app/models/memberData.dart';
import 'package:gym_owner_app/screens/memberPersonalDataScreen.dart';
import '../widgets/main_drawer.dart';

class MyDashboardScreen extends StatefulWidget {
  static const routeName = '/MyDashboardScreen';

  @override
  State<MyDashboardScreen> createState() => _MyDashboardScreenState();
}

class _MyDashboardScreenState extends State<MyDashboardScreen> {
  //List<bool> selected = List<bool>.generate(10, (int index) => false);
  List<MemberAttendencesRowData> tempRowData = [];

  FocusNode searchFocusNode = FocusNode();

  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "attendences",
        data: data,
        domainFn: (BarChartModel series, _) => series.day,
        measureFn: (BarChartModel series, _) => series.attendences,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'My Dashboard',
          style: TextStyle(color: Theme.of(context).textTheme.headline1.color),
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Upper Container//////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 22,
                  right: 22,
                  top: 22,
                  bottom: 22,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: Row(
                  children: [
                    //Registartions///////////////
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Registrations',
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                                fontSize: 11),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '7',
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 50,
                            height: 2,
                            color: Colors.pink,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 100,
                      color: Colors.grey[200],
                    ),

                    //Earnings///////////////

                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Earnings',
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                                fontSize: 11),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1293',
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 50,
                            height: 2,
                            color: Colors.purple,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      height: 100,
                      color: Colors.grey[200],
                    ),

                    //Attendences///////////////

                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Attendences',
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                                fontSize: 11),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '7',
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.headline2.color,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Container(
                            width: 50,
                            height: 2,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 50),
              child: Text(
                'Activity',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.headline2.color),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 22.0, right: 22.0, top: 5),
              child: Text(
                'Attendences Perday',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 50),
              child: Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: charts.BarChart(
                      series,
                      animate: true,
                      flipVerticalAxis: false,
                      vertical: false,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 50),
              child: Text(
                'Members',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.headline2.color),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0, right: 22.0, top: 5),
              child: Text(
                'Attendence Perday',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) async {
                  print('Starting empty list');
                  List<MemberAttendencesRowData> sortedMemberRowData = [];

                  try {
                    //   setState(() {});

                    for (var memberData in rowData) {
                      if (memberData.name.startsWith(value)) {
                        print('Found a value which is::${value}');
                        if (value != '') {
                          sortedMemberRowData.add(memberData);
                        }
                      }
                    }
                    if (sortedMemberRowData.isEmpty && value != '') {
                      print('List is Empty');
                      setState(() {
                        rowData = tempRowData;
                        // empty = true;
                        // loadingMembersData = false;
                        // connectionError = false;
                      });
                    } else {
                      print('List is Sorted');

                      setState(() {
                        tempRowData = rowData;

                        rowData = sortedMemberRowData;
                        // loadingMembersData = false;
                        // connectionError = false;
                      });
                    }
                  } on SocketException {
                    // setState(() {
                    //   connectionError = true;
                    //   loadingMembersData = false;
                    //   empty = false;
                    // });
                  }
                },
                controller: searchController,
                keyboardType: TextInputType.text,
                onTap: () {
                  setState(() {});
                },
                focusNode: searchFocusNode,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                      color: searchFocusNode.hasFocus
                          ? Theme.of(context).primaryColor
                          : Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: searchFocusNode.hasFocus
                            ? Theme.of(context).primaryColor
                            : Colors.black54),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: searchFocusNode.hasFocus
                            ? Theme.of(context).primaryColor
                            : Colors.black54),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  labelText: 'Search by Name',
                  labelStyle: TextStyle(
                    color: searchFocusNode.hasFocus
                        ? Theme.of(context).primaryColor
                        : Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 50),
              child: Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ],
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      dataRowHeight: 70,
                      columns: const <DataColumn>[
                        DataColumn(
                            label: Text('ID',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Name',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Creation Date',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Age',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Action',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                      ],
                      rows: List<DataRow>.generate(
                        rowData.length,
                        (int index) => DataRow(
                          color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            // All rows will have the same selected color.
                            if (states.contains(MaterialState.selected)) {
                              return Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.08);
                            }
                            // Even rows will have a grey color.
                            if (index.isEven) {
                              return Colors.grey.withOpacity(0.3);
                            }
                            return null; // Use default value for other states and odd rows.
                          }),

                          cells: <DataCell>[
                            DataCell(
                              Text(rowData[index].id),
                            ),
                            DataCell(
                              Text(rowData[index].name),
                            ),
                            DataCell(
                              Text(rowData[index].creationDate),
                            ),
                            DataCell(
                              Text(rowData[index].age),
                            ),
                            DataCell(
                              Container(
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(0, 4),
                                        blurRadius: 5.0)
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    MemberData memberData = MemberData();

                                    memberData.name = rowData[index].name;
                                    memberData.creationDate =
                                        rowData[index].creationDate;
                                    memberData.age = rowData[index].age;
                                    memberData.id = rowData[index].id;

                                    pickedMember = memberData;

                                    Navigator.of(context).pushNamed(
                                        MemberPersonalDataScreen.routeName);
                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Show More',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .headline1
                                              .color),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          // selected: selected[index],

                          // onSelectChanged: (bool value) {
                          //   setState(() {
                          //     selected[index] = value;
                          //   });
                          // },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
