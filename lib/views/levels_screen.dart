import 'package:educational_app/controller/level_screen_controller.dart';
import 'package:educational_app/custom_widget/custom_box_widget.dart';
import 'package:educational_app/custom_widget/custom_level_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_primary_button.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class LevelScreen extends GetView<LevelScreenController>{
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: CustomAppColor.appBackgroundGradient,
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: CustomAppColor.kWhiteColor),
          title: const Text('Level Test', style:
          TextStyle(
            fontWeight: FontWeight.w500,
            color: CustomAppColor.kWhiteColor,
            fontSize: 25.0,
            fontFamily: CustomTextSizing.kPoppinsFontFamily,
          ),),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          width: Get.width,
          child:   SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                    child:
                    Text("Question 1 of 8:",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.w700,
                        color: CustomAppColor.kWhiteColor,
                        fontSize: 18.0,
                        fontFamily: CustomTextSizing.kPoppinsFontFamily,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.listOfMcq.length,
                      itemBuilder: (context, index) {
                        return   Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.listOfMcq[index].ques, style:
                                      const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: CustomAppColor.kWhiteColor,
                                        fontSize: 15.0,
                                        fontFamily: CustomTextSizing.kPoppinsFontFamily,
                                      ), ),
                                for(int j = 0; j < controller.listOfMcq[index].listOfOptions.length; j++)
                                  Obx(()=>
                                      CustomLevelBoxWidget(boxName: controller.listOfMcq[index].listOfOptions[j].opt,
                                      onTap: (){
                                        if(controller.selectedOption.isNotEmpty){
                                          if(controller.selectedOption.map((e) => e.quesId).contains(controller.listOfMcq[index].listOfOptions[j].quesId)){
                                           controller.selectedOption.remove(controller.listOfMcq[index].listOfOptions[j]);
                                              controller.selectedOption.add(controller.listOfMcq[index].listOfOptions[j]);
                                            print(controller.selectedOption);
                                          }else {
                                            if(!controller.selectedOption.contains(controller.listOfMcq[index].listOfOptions[j])) {
                                              controller.selectedOption.add(controller.listOfMcq[index].listOfOptions[j]);
                                            }
                                          }
                                        }else{
                                          controller.selectedOption.add(controller.listOfMcq[index].listOfOptions[j]);
                                        }

                                    },
                                      borderRadius: 10,
                                      gradientColor: CustomAppColor.optionsBoxGradient,
                                      selectedOption: controller.selectedOption.value ),
                                  ),
                              ],
                          ),
                        );
                      }
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomPrimaryButton(
                        buttonName: 'Next',
                        onTap: (){
                          print(controller.selectedOption);
                        },
                        bgColor: CustomAppColor.kSearchBarColor,
                        textColor: CustomAppColor.kGreenTextColor,
                        borderRadius: 5,
                        buttonWidth: Get.width * 0.25,
                        buttonFontSize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}