import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar
  void updateIndex(int index) => emit(index);

  /// for navigation button on single page
  void getHome() => emit(0);
  void getTasks() => emit(1);
  void getApps() => emit(2);
  void getNotification() => emit(3);
  void getProfile() => emit(4);
}
