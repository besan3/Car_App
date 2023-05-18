import 'package:cars/core/configs.dart';
import 'package:cars/features/home/presentation/manager/home_controller.dart';
import 'package:cars/features/home/presentation/widgets/app_bar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeLayout extends GetView<HomeController> {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        drawer: const Drawer(
          backgroundColor: AppColors.whiteColor,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: controller.items,
          currentIndex: controller.index,
          onTap: (index) {
            controller.changeScreen(index);

          },
        ),

        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: AppBarWidget(
              title: controller.screensTitles[controller.index],
            )),
        body: controller.screens[controller.index],
      );
    });
  }
}
