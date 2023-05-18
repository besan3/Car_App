import 'package:equatable/equatable.dart';

class CarPalletModel extends Equatable{
  final String logo;
  final String nameAr;
  final String nameEn;
  final String numberEn;
  final String numberAr;
  final CarDetail? carDetail;
  CarPalletModel({required this.logo,required this.nameAr,required this.nameEn,required this.numberEn,required this.numberAr,this.carDetail});
  @override

  List<Object?> get props => [logo,nameAr,nameEn,numberEn,numberAr];

}
class CarDetail extends Equatable{
  final String price;
  final String owner;
  final String logoType;
  final String amountStatus;
  final String category;
  CarDetail({
    required this.price,
    required this.owner,
    required this.logoType,
    required this.amountStatus,
    required this.category,
  });
  @override

  List<Object?> get props => [price,owner,logoType,amountStatus,category];


}