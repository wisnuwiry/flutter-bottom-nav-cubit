import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import '../cubit/botttom_nav_cubit.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.pink,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Profile Page',
          style: Theme.of(context).textTheme.headline3,
        ),
        RaisedButton(
          onPressed: () {
            context.cubit<BottomNavCubit>().getTasks();
          },
          child: Text('GO TO TASK'),
        )
      ]),
    );
  }
}
