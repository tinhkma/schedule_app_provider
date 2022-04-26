import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schedule_provider/locator.dart';
import 'package:schedule_provider/view_models/home_screen_viewmodel.dart';

import '../../utils/dimens.dart';
import '../view/calendar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenViewModel model = getIt<HomeScreenViewModel>();

  @override
  void initState() {
    model.loadData("AT140147", "xuantinhb3");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule with provider'),
      ),
      // body: buildCalendarTable(model),
      body: buildCalendarTable(model),
    );
  }

  Widget buildCalendarTable(HomeScreenViewModel viewModel) {
    return ChangeNotifierProvider<HomeScreenViewModel> (
      create: (context) => viewModel,
      child: Consumer<HomeScreenViewModel> (
        builder: (context, model, child) => Container(
          padding: EdgeInsets.all(dp16),
          child: model.loading ? Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          ) : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: CalendarView(scheduleDho: model.scheduleDho,),
              )
            ],
          ),
        ),
      ),
    );
  }
}