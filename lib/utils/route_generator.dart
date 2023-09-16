import 'package:educational_app/utils/screen_binding.dart';
import 'package:educational_app/views/home_screen.dart';
import 'package:educational_app/views/login_screen.dart';
import 'package:educational_app/views/onboarding_screen.dart';
import 'package:educational_app/views/profile_screen.dart';
import 'package:educational_app/views/registration_screen.dart';
import 'package:educational_app/views/setting_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/splash_screen.dart';
import 'app_constant.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: kSplashScreen,
        page: () => const SplashScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kHomeScreen,
        page: () => const HomeScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kSettingScreen,
        page: () => const SettingScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kRegistrationScreen,
        page: () => const RegistrationScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kOnBoardingScreen,
        page: () => const OnBoardingScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kLoginScreen,
        page: () => const LoginScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: kProfileScreen,
        page: () => const ProfileScreen(),
        binding: ScreenBindings(),
      ),

    ];
  }


}