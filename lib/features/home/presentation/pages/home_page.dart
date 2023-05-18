import 'package:banner_carousel/banner_carousel.dart';
import 'package:cars/core/widgets.dart';
import 'package:cars/features/home/data/local/models/car_pallet_model.dart';
import 'package:cars/features/home/presentation/manager/home_controller.dart';
import 'package:cars/features/home/presentation/widgets/car_detailed_pallet.dart';
import 'package:cars/features/home/presentation/widgets/car_pallet_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/configs.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.all(AppSizes.space20.w.h),
        child:  GetBuilder<HomeController>(
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar(
                  controller: controller.searchController,
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: const MaterialStatePropertyAll(AppColors.whiteColor),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.radius12.r),
                    ),
                  ),
                  hintText: AppTexts.searchExample,
                  hintStyle:MaterialStatePropertyAll(
                    context.theme.primaryTextTheme.displayMedium
                  ) ,
                  leading: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: AppColors.hintColor,),),
                  trailing: [
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(AppImages.filterIcon),)
                  ],
                ),
                DefaultSpacer(height: AppSizes.space18.h,),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all( AppSizes.space18.h.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppTexts.offerTitle,style: context.theme.primaryTextTheme.titleMedium,),
                              Text(AppTexts.offerSubTitle,style: context.theme.primaryTextTheme.titleSmall,),
                              DefaultSpacer(height: AppSizes.space12.h,),

                              FilledButton(
                                  onPressed: (){},
                                  child: Text(AppTexts.changeMyAcc,style: context.theme.primaryTextTheme.labelMedium,))
                            ],
                          ),
                        ),
                        SvgPicture.asset(AppImages.home),

                      ],
                    ),
                  )
                ),
                DefaultSpacer(height: AppSizes.space18.h,),
                Text(AppTexts.category,
                style: context.theme.primaryTextTheme.titleMedium,),
                DefaultSpacer(height: AppSizes.space12.h,),
                SizedBox(
                  height: 70.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection:Axis.horizontal,
                    itemBuilder: (context,index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap:(){
                              controller.changeItem(index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppSizes.radius12.r),
                                color: AppColors.whiteColor,
                                border: Border.all(
                                  color:controller.selectedIndex==index?AppColors.primaryColor:AppColors.whiteColor,
                                  width: 2.0,
                                ),
                              ),
                              height: 47.h,
                              width: 105.w,
                              child: Center(child: SvgPicture.asset(AppImages.categoriesIcons[index])),
                            ),
                          ),
                          Text(AppTexts.categories[index],
                          style: context.theme.primaryTextTheme.displaySmall,
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context,index) {
                      return DefaultSpacer(width: AppSizes.space16.w,);
                    }, itemCount: 3,
                  ),
                ),
                DefaultSpacer(height: AppSizes.space18.h,),
                Text(AppTexts.specialPlates,
                  style: context.theme.primaryTextTheme.titleMedium,),
                DefaultSpacer(height: AppSizes.space12.h,),
                BannerCarousel(
                  customizedBanners: List.generate(3, (index) => Center(
                    child: CarPalletWidget(carPalletModel: CarPalletModel(
                      logo:AppImages.ksaIcon ,
                      nameAr:AppTexts.plateName ,
                      nameEn:AppTexts.plateNameEng ,
                      numberAr: AppTexts.plateNo,
                      numberEn: AppTexts.plateNoEng,
                    )),
                  )),
                ),
                DefaultSpacer(height: AppSizes.space18.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppTexts.saleOffers,
                      style: context.theme.primaryTextTheme.titleMedium,),
                    Text(AppTexts.seeAll,
                      style: context.theme.primaryTextTheme.displaySmall,),
                  ],
                ),
                DefaultSpacer(height: AppSizes.space12.h,),
                SizedBox(
                  height: 350.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    separatorBuilder:(context,index)=>DefaultSpacer(width: AppSizes.space12.w) ,
                    itemBuilder: (context,index) {
                      return CarDetailedPalletWidget(
                        carPalletModel: CarPalletModel(
                            logo:AppImages.ksaIcon ,
                            nameAr:AppTexts.plateName ,
                            nameEn:AppTexts.plateNameEng ,
                            numberAr: AppTexts.plateNo,
                            numberEn: AppTexts.plateNoEng,
                            carDetail: CarDetail(
                                amountStatus:AppTexts.priceExa ,
                                category:AppTexts.priceExa ,
                                logoType:AppTexts.priceExa ,
                                owner: AppTexts.priceExa,
                                price: AppTexts.priceExa
                            )
                        ),
                      );
                    }
                  ),
                ),






              ],
            );
          }
        ),
      ),
    );
  }
}
