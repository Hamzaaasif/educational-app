import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/utils_methods.dart';

class LoginScreenController extends GetxController{
  String logoImage=Img.get('login_logo.png');
  String logoImage2=Img.get('app_logo_2.png');
  String googleIcon=IconImage.get('google_icon.png');
  late TextEditingController emailTextEditingController;
  RxString emailErrorMsg=''.obs;
  RxBool switchValue = false.obs;
  late FocusNode emailFocusNode;



}