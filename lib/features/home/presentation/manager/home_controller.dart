import 'package:cars/core/configs.dart';
import 'package:cars/features/home/presentation/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeController extends GetxController{
  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
  int index = 0;
  int selectedIndex = -1;

  static bool isSelected=false;
  PageController scrollController=PageController();
  TextEditingController searchController=TextEditingController();
  List<String> screensTitles=[
    AppTexts.home,
    AppTexts.wallet,
    AppTexts.saleOffers,
    AppTexts.orders,
    AppTexts.settings,
  ];
  List<Widget> screens=[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void changeScreen(int currentIndex) {
    index = currentIndex;
    update();
  }
 void changeItem(int currentIndex) {
   isSelected=!isSelected;
    update();
  }


  List<BottomNavigationBarItem> items=[
    BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.homeIcon,

    ),label: AppTexts.home,),
    BottomNavigationBarItem(icon:
SvgPicture.asset(AppImages.creditCardIcon,
    ),label: AppTexts.wallet),
    BottomNavigationBarItem(icon: FilledButton(
  style: ButtonStyle(
  shape: MaterialStateProperty.resolveWith((states) =>   RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(AppSizes.radius8.r),
  ),),
  padding:MaterialStateProperty.resolveWith((states) => EdgeInsets.all(AppSizes.radius8.w.h)) ,
  minimumSize:MaterialStateProperty.resolveWith((states) => Size(AppSizes.iconBoxWidth.w, AppSizes.iconBoxHeight.h)) ,
  backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.primaryColor)
  ),
      onPressed: (){},
      child: const Icon(Icons.add,color: AppColors.whiteColor,)
    ),label: AppTexts.saleOffers),
    BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.commentIcon,
    ),label: AppTexts.orders),
    BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.settingsIcon),label: AppTexts.settings),
  ];


}