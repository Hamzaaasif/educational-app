import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/utils_methods.dart';
import 'dashboard_screen_controller.dart';

class LessonScreenController extends GetxController{
  final DashboardScreenController dashboardScreenController = Get.find<DashboardScreenController>();
  String lessonJavaImage=Img.get('lesson_java.png');
  String javaCollectionImage=Img.get('java_collection.png');
  String javaListImage=Img.get('java_list.png');
  String javaLoopImage=Img.get('loop.png');
  String backIcon=IconImage.get('back_icon.png');

  void javaLaunchURL() async {
    const url = 'https://www.w3schools.com/java/java_recursion.asp';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void javaLaunchURL2() async {
    const url = 'https://www.w3schools.com/java/java_classes.asp';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void javaLaunchURL3() async {
    const url = 'https://www.w3schools.com/java/java_arrays.asp';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void javaLaunchURL4() async {
    const url = 'https://www.w3schools.com/java/java_for_loop.asp';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}