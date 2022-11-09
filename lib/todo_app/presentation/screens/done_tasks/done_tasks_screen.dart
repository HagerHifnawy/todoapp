
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/todo_app/business_logic/cubit/app_cubit.dart';

import '../../components/build_conditional_item.dart';


class DoneTasksScreen extends StatelessWidget {
  const DoneTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var tasks=AppCubit.get(context).doneTasks;
        return buildConditionalItem(tasks: tasks);
      },
    );
  }
}