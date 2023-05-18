import 'package:cars/core/configs.dart';

class AppThemes{
  final ThemeData lightTheme=ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      useMaterial3: true,
    backgroundColor: AppColors.backgroundColor,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor:AppColors.backgroundColor ,
    appBarTheme:  const AppBarTheme(
      elevation: 0.0,
      centerTitle: true,

      backgroundColor: AppColors.backgroundColor
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape:MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.radius12.r),
            )
        ),
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.primaryColor
        ),

      )
    ),

    cardTheme: CardTheme(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radius12.r),
      ),
      elevation: 0.0,
      color: AppColors.whiteColor
    ),
    primaryTextTheme:   TextTheme(
      titleMedium: TextStyle(
        color: AppColors.primaryFontColor,
        fontSize: AppSizes.font18.sp,
        fontWeight:FontWeight.w500,
        fontFamily: AppTexts.appFontFamily
      ),
        bodyMedium: TextStyle(
        color: AppColors.primaryFontColor,
        fontSize: AppSizes.font15.sp,
        fontWeight:FontWeight.w500,
        fontFamily: AppTexts.appFontFamily
      ),
        titleSmall: TextStyle(
        color: AppColors.primaryFontColor,
        fontSize: AppSizes.font13.sp,
        fontWeight:FontWeight.w400,
        fontFamily: AppTexts.appFontFamily
      ),
   bodySmall: TextStyle(
       color: AppColors.hintColor,
       fontSize: AppSizes.font14.sp,
       fontWeight:FontWeight.w400,
       fontFamily: AppTexts.appFontFamily
   ),

      displaySmall: TextStyle(
          color: AppColors.secondaryFontColor,
          fontSize: AppSizes.font13.sp,
          fontWeight:FontWeight.w500,
          fontFamily: AppTexts.appFontFamily
      ),
      displayMedium:TextStyle(
          color: AppColors.hintColor,
          fontSize: AppSizes.font16.sp,
          fontWeight:FontWeight.w500,
          fontFamily: AppTexts.appFontFamily
      ),
      labelMedium: TextStyle(
          color: AppColors.whiteColor,
          fontSize: AppSizes.font14.sp,
          fontWeight:FontWeight.w500,
          fontFamily: AppTexts.appFontFamily
      ),
      labelLarge: TextStyle(
          color: AppColors.greenColor,
          fontSize: AppSizes.font18.sp,
          fontWeight:FontWeight.w500,
          fontFamily: AppTexts.appFontFamily
      ),
    )
  );
}