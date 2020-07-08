import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import '../cubit/botttom_nav_cubit.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.cyan,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Notification Page',
          style: Theme.of(context).textTheme.headline3,
        ),
        RaisedButton(
          onPressed: () {
            context.cubit<BottomNavCubit>().getHome();
          },
          child: Text('GO TO HOME'),
        )
      ]),
    );
  }
}
