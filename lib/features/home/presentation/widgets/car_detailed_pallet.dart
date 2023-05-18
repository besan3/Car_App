import 'package:cars/core/configs.dart';
import 'package:cars/features/home/data/local/models/car_pallet_model.dart';
import 'package:flutter_svg/svg.dart';

class CarDetailedPalletWidget extends StatelessWidget {
final CarPalletModel carPalletModel;

 CarDetailedPalletWidget({
   required this.carPalletModel,
 });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SizedBox(
          width: 190.w,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(AppSizes.space18.h.w),
              child: Column(
                children: [
                  Container(
                    // width: 168.w,
                    decoration: BoxDecoration(
                      color: AppColors.lightGreyColor,
                      borderRadius: BorderRadius.circular(AppSizes.radius12.r
                      ),
                      border: Border.all(
                        color:AppColors.greyColor,
                        width: 2.0,
                      ),

                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(AppSizes.radius8.h.w),
                              child: SvgPicture.asset(carPalletModel.logo),
                            ),
                            Container(
                              color: AppColors.greyColor,
                              width: 2,
                              height: 120.h,
                            ),
                            Expanded(child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(carPalletModel.numberAr,
                                    style: context.theme.primaryTextTheme.titleMedium,
                                  ),
                                ),
                                Container(
                                  color: AppColors.greyColor,
                                  width: 200.w,
                                  margin: EdgeInsets.symmetric(vertical:AppSizes.space12.h),
                                  height: 2.h,
                                ),
                                Text(carPalletModel.numberEn.toUpperCase(),
                                  style: context.theme.primaryTextTheme.titleMedium,
                                ),
                              ],
                            ),),
                            Container(
                              color: AppColors.greyColor,
                              width: 2,
                              padding: EdgeInsets.symmetric(horizontal:AppSizes.space12.w),
                              height: 120.h,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Center(
                                    child: Text(carPalletModel.numberAr,
                                      style: context.theme.primaryTextTheme.titleMedium,
                                    ),
                                  ),
                                  Container(
                                    color: AppColors.greyColor,
                                    width: 200.w,
                                    margin: EdgeInsets.symmetric(vertical:AppSizes.space12.h),
                                    height: 2.h,
                                  ),
                                  Text(carPalletModel.numberEn.toUpperCase(),
                                    style: context.theme.primaryTextTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical:AppSizes.space12.h.w),
                    padding: EdgeInsets.all(AppSizes.space18.h.w),
                    color: AppColors.lightGreyColor,
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: AppTexts.price,
                            style: context.theme.primaryTextTheme.titleSmall,
                            children: [
                              TextSpan(
                                text: carPalletModel.carDetail!.price,
                                style: context.theme.primaryTextTheme.labelLarge,
                              )
                            ]
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             SvgPicture.asset(AppImages.privacyIcon),
                             Column(
                               children: [
                                 Text(
                                   AppTexts.transformOwnerShip,
                                   style: context.theme.primaryTextTheme.displaySmall,),
                                 Text(
                                   carPalletModel.carDetail!.owner,
                                   style: context.theme.primaryTextTheme.titleSmall,),
                               ],
                             ),
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SvgPicture.asset(AppImages.carLogo),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text(
                                   AppTexts.logo,
                                   style: context.theme.primaryTextTheme.displaySmall,),
                                 Text(
                                   carPalletModel.carDetail!.logoType,
                                   style: context.theme.primaryTextTheme.titleSmall,),
                               ],
                             ),
                           ],
                         ),
                       ],
                     ),
                      SizedBox(height: AppSizes.space12.w,),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(AppImages.emojiIcon),
                              Column(
                                children: [
                                  Text(
                                    AppTexts.amountStatus,
                                    style: context.theme.primaryTextTheme.displaySmall,),
                                  Text(
                                    carPalletModel.carDetail!.amountStatus,
                                    style: context.theme.primaryTextTheme.titleSmall,),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AppImages.carIcon),
                              Column(
                                children: [
                                  Text(
                                    AppTexts.category,
                                    style: context.theme.primaryTextTheme.displaySmall,),
                                  Text(
                                    carPalletModel.carDetail!.logoType,
                                    style: context.theme.primaryTextTheme.titleSmall,),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(

          top: 0,

          child: FilledButton(

            onPressed: (){},
            style: ButtonStyle(
              shape:MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.radius5.r),
                  )
              ),
              backgroundColor: const MaterialStatePropertyAll(
                  AppColors.whiteColor
              ),
              minimumSize:MaterialStateProperty.resolveWith((states) => Size(30.w, 30.h)) ,
              padding:MaterialStateProperty.resolveWith((states) => EdgeInsets.all(AppSizes.radius5.h.w)) ,

            ),
            child: const Icon(Icons.favorite_border_outlined,color: AppColors.redColor,size:AppSizes.iconSize18,),
          ),
        )
      ],
    );
  }


}
