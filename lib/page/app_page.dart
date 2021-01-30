import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/botttom_nav_cubit.dart';

class AppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Apps Page',
          style: Theme.of(context).textTheme.headline3,
        ),
        RaisedButton(
          onPressed: () {
            context.read<BottomNavCubit>().getNotification();
          },
          child: Text('GO TO NOTIFICATION'),
        )
      ]),
    );
  }
}
