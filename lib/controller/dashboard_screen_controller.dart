import 'package:educational_app/views/home_screen.dart';
import 'package:educational_app/views/lessons_screen.dart';
import 'package:educational_app/views/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashboardScreenController extends GetxController{
  RxInt selectedIndex = 0.obs,
      lastIndex = 0.obs;

  final List<Widget> homeScreens = [
    const HomeScreen(),
    const LessonScreen(),
    const ProfileScreen(),
  ];
}