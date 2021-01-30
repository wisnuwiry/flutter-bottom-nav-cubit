import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/botttom_nav_cubit.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Tasks Page',
          style: Theme.of(context).textTheme.headline3,
        ),
        RaisedButton(
          onPressed: () {
            context.read<BottomNavCubit>().getHome();
          },
          child: Text('GO TO HOME'),
        )
      ]),
    );
  }
}
