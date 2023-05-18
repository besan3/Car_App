import 'package:cars/features/home/presentation/manager/home_binding.dart';
import 'package:cars/features/home/presentation/widgets/home_layout.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String layout='/layout';
  static String getLayoutRout() => layout;

  List<GetPage> routes = [

    GetPage(name: layout, page: () => HomeLayout(),binding: HomeBinding()),


  ];
}