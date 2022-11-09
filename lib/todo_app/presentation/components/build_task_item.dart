
import 'package:flutter/material.dart';
import 'package:todo_app/todo_app/business_logic/cubit/app_cubit.dart';

Widget buildTaskItem(Map model, context) => Dismissible(
  key: Key(model['id'].toString()),
  onDismissed: (direction) {
    AppCubit.get(context).deleteData(id: model['id']);
  },
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          child: Text(
            '${model['time']}',
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${model['title']}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${model['date']}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        IconButton(
            onPressed: () {
              AppCubit.get(context)
                  .updateData(status: 'done', id: model['id']);
            },
            icon: Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            )),
        IconButton(
            onPressed: () {
              AppCubit.get(context)
                  .updateData(status: 'archived', id: model['id']);
            },
            icon: Icon(
              Icons.archive_outlined,
              color: Colors.black45,
            )),
      ],
    ),
  ),
);