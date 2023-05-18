import 'package:cars/core/configs.dart';
import 'package:cars/core/routes.dart';
import 'features/home/presentation/manager/home_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  const Size(AppSizes.screenWidth, AppSizes.screenHeight),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,child) {
        return GetMaterialApp(
          textDirection: TextDirection.rtl,
          debugShowCheckedModeBanner: false,
          theme: AppThemes().lightTheme,
          initialRoute: AppRoutes.layout,
          getPages: AppRoutes().routes,
          initialBinding: HomeBinding(),
        );
      }
    );
  }
}


