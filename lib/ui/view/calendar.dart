import 'package:flutter/material.dart';
import 'package:schedule_provider/models/schedule_dho.dart';
import 'package:schedule_provider/ui/view/table_events_example.dart';

// Example holidays
final Map<DateTime, List> _holidays = {
  DateTime(2021, 1, 1): ['New Year\'s Day'],
  DateTime(2021, 1, 15): ['Tho and Bong'],
  DateTime(2021, 2, 14): ['Valentine\'s Day'],
  DateTime(2021, 7, 27): ['Truong Xuan Tinh'],
  DateTime(2021, 12, 20): ['My Love'],
};

class CalendarView extends StatefulWidget {
  ScheduleDho scheduleDho = ScheduleDho();

  CalendarView({required this.scheduleDho});

  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.redAccent,
            child: TableEventsExample(),
          ),
          Container(
            color: Colors.green,
          )
        ],
      ),
    );
  }

}