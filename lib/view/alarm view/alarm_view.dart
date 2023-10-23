import 'package:clock_app/alarm_bloc/alarm_cubit.dart';
import 'package:clock_app/constants.dart';
import 'package:clock_app/view/alarm%20view/components/body.dart';
import 'package:clock_app/view/alarm%20view/components/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});
  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}
class _AlarmScreenState extends State<AlarmScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AlarmCubit>(context).getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingButton(),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
