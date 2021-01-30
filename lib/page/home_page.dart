import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/botttom_nav_cubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Home Page',
          style: Theme.of(context).textTheme.headline3,
        ),
        RaisedButton(
          onPressed: () {
            context.read<BottomNavCubit>().getProfile();
          },
          child: Text('GO TO PROFILE'),
        )
      ]),
    );
  }
}
