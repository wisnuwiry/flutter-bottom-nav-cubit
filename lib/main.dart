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

  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return HomePage();
        break;
      case 1:
        return TasksPage();
        break;
      case 2:
        return AppsPage();
        break;
      case 3:
        return NotificationPage();
        break;
      case 4:
        return ProfilePage();
        break;
      default:
        return Text('Not Found');
    }
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.date_range), title: Text('Task')),
        BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text('Apps')),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            title: Text('Notification')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Profile')),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    switch (index) {
      case 0:
        context.cubit<BottomNavCubit>().getHome();
        break;
      case 1:
        context.cubit<BottomNavCubit>().getTasks();
        break;
      case 2:
        context.cubit<BottomNavCubit>().getApps();
        break;
      case 3:
        context.cubit<BottomNavCubit>().getNotification();
        break;
      case 4:
        context.cubit<BottomNavCubit>().getProfile();
        break;
      default:
    }
  }
}
