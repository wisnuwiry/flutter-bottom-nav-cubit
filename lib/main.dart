import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import 'cubit/botttom_nav_cubit.dart';
import 'page/app_page.dart';
import 'page/home_page.dart';
import 'page/notification_page.dart';
import 'page/profile_page.dart';
import 'page/task_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CubitProvider(
        create: (context) => BottomNavCubit(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MainPage(),
        ));
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return CubitBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        // Update _currentIndex with state cubit
        _currentIndex = state;

        return Scaffold(
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  /// Create a list of pages to make the code shorter and better readability
  ///
  final _pageNavigation = [
    HomePage(),
    TasksPage(),
    AppsPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  Widget _buildBody(int index) {
    /// Check if index is in range
    /// else return Not Found widget
    ///
    if (index <= 4)
      return _pageNavigation[index];
    else
      return Text('Not Found');
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.date_range), label: "Task"),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
        BottomNavigationBarItem(icon: Icon(Icons.notification_important), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    if (index <= 4)
      context.cubit<BottomNavCubit>().updateIndex(index);
    else
      print('index not in range');
  }
}
