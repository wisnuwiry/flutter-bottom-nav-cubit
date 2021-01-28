import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            context.read<BottomNavCubit>().getTasks();
          },
          child: Text('GO TO TASK'),
        )
      ]),
    );
  }
}
