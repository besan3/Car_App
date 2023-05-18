
import 'package:cars/core/configs.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  AppBarWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:AppSizes.space18.w,top: AppSizes.space30.h,bottom: AppSizes.space12.h,right: AppSizes.space18.w,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilledButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          },
            style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states) =>   RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.radius8.r),
                ),),
                padding:MaterialStateProperty.resolveWith((states) => EdgeInsets.all(AppSizes.radius8.w.h)) ,
                minimumSize:MaterialStateProperty.resolveWith((states) => Size(AppSizes.iconBoxWidth.w, AppSizes.iconBoxHeight.h)) ,
                backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.whiteColor)
            ), child: SvgPicture.asset(AppImages.menuIcon),
          ),
          Text(title,
          style: context.theme.primaryTextTheme.titleMedium
          ),

          FilledButton(onPressed: (){},
            style: ButtonStyle(
                shape: MaterialStateProperty.resolveWith((states) =>   RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.radius8.r),
                ),),
                padding:MaterialStateProperty.resolveWith((states) => EdgeInsets.all(AppSizes.radius8.w.h)) ,
                minimumSize:MaterialStateProperty.resolveWith((states) => Size(AppSizes.iconBoxWidth.w, AppSizes.iconBoxHeight.h)) ,
                backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.whiteColor)
            ), child: SvgPicture.asset(AppImages.notificationIcon),
          ),
        ],
      ),
    );
  }
}
