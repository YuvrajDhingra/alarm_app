import 'package:clock_app/alarm_services.dart';
import 'package:clock_app/databaseHelp.dart';
import 'package:clock_app/alarm_bloc/alarm_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clock_app/model.dart';

class AlarmCubit extends Cubit<AlarmStates>{
  AlarmCubit() : super(NoData());
  final DbHelper helper=DbHelper();
  late Future<List<AlarmModel>> list;
  void getData()async{
    helper.getData().then((value) {
      list=Future.value(value);
      emit(HasData());
    });

  }
  void addData(BuildContext context)async{
    var picker=await showTimePicker(context: context,
        initialTime: TimeOfDay.now(),
      helpText: "Set Alarm Time",
    );
    if(picker!=null){
      MyAlarm.setAlarm(picker,context);
    }
  }
  Future<Duration> getDifferenceBetweenCurrentTimeAndSelectedTime(TimeOfDay selectedTime) async {
    final now = DateTime.now();
    final selectedDateTime = DateTime(now.year, now.month, now.day, selectedTime.hour, selectedTime.minute);
    return selectedDateTime.difference(now);
  }
}