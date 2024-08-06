import 'package:explore_dubai/provider/state_selecting_controller.dart';
import 'package:explore_dubai/screens/splash/splash_screen.dart';
import 'package:explore_dubai/utils/app_colors.dart';
import 'package:explore_dubai/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        ensureScreenSize: true,
        minTextAdapt: true,
        designSize: const Size(373, 650),
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => StateSelectingController()),
            ],
            child: GetMaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                    centerTitle: true,
                    backgroundColor: AppColors.primaryColor,
                    titleTextStyle: AppTextStyle.primaryBold.copyWith(
                      fontSize: 18,
                      color: AppColors.primaryWhite,
                    ),
                    iconTheme: IconThemeData(
                      color: AppColors.primaryWhite,
                    )),
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const SplashScreen(),
            ),
          );
        });
  }
}
