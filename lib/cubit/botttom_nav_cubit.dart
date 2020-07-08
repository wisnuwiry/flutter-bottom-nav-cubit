import 'package:cubit/cubit.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void getHome() => emit(0);
  void getTasks() => emit(1);
  void getApps() => emit(2);
  void getNotification() => emit(3);
  void getProfile() => emit(4);
}