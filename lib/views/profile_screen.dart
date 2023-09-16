import 'package:educational_app/controller/profile_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../custom_widget/custom_bottom_navbar.dart';
import '../custom_widget/custom_box_widget.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: CustomAppColor.appGradient,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomBoxtWidget(
                    boxHeight: Get.height * 0.08,
                    boxName: 'Username',
                    onTap: (){},
                    borderRadius: 9.0,
                    gradientColor: CustomAppColor.buttonGradient,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomBoxtWidget(
                    boxHeight: Get.height * 0.08,
                    boxName: 'Email',
                    onTap: (){},
                    borderRadius: 9.0,
                    gradientColor: CustomAppColor.buttonGradient,
                  ),
                ),
                Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: CustomBoxtWidget(
                  boxHeight: Get.height * 0.08,
                  boxName: 'Address',
                  onTap: (){},
                  borderRadius: 9.0,
                  gradientColor: CustomAppColor.buttonGradient,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomBoxtWidget(
                    boxHeight: Get.height * 0.08,
                    boxName: 'Age & D.O.B',
                    onTap: (){},
                    borderRadius: 9.0,
                    gradientColor: CustomAppColor.buttonGradient,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomBoxtWidget(
                    boxHeight: Get.height * 0.08,
                    boxName: 'Level',
                    onTap: (){},
                    borderRadius: 9.0,
                    gradientColor: CustomAppColor.buttonGradient,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: CustomBoxtWidget(
                    boxHeight: Get.height * 0.08,
                    boxName: 'Logout',
                    onTap: (){},
                    borderRadius: 9.0,
                    gradientColor: CustomAppColor.buttonGradient,
                  ),
                ),
              ],
            ),
          ),
        ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white,),
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: const Text('Profile', style:
                  TextStyle(
                    fontWeight: FontWeight.w500,
                    color: CustomAppColor.kWhiteColor,
                    fontSize: 25.0,
                    fontFamily: CustomTextSizing.kPoppinsFontFamily,
                ),),
                actions: [
            IconButton(
            icon: Image.asset("assets/icons/person.png", width: 25.0, height: 25.0,), onPressed: () {  },
          ),
        ]
      ),
          ),
        ]
    ),
    );
  }
}