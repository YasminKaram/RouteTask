import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routetask/Core/Utils/AppColors.dart';
import 'package:routetask/Core/Utils/AppStyles.dart';

class ProductItem extends StatelessWidget {
  String ?image;
  String ?name;
  String ?price;
  String ?priceBefore;
  String ?rate;
  String ?descraption;

  ProductItem(this.image, this.name, this.price, this.priceBefore, this.rate,this.descraption);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
          side: BorderSide(color: AppColors.border)),
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 5.0.h,horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.fill,
                imageUrl: image??"",
                width: 200.w,
                height: 120.h,
              ),
              Image.asset("assets/images/fav.png")
            ],
          ),
          Flexible(
            child: Text(
              name??"",
              maxLines: 1,
              style: AppStyles.productName,
              overflow: TextOverflow.ellipsis,
            ),
          ), 
              Flexible(
                child: Text(
                  descraption??"",
                  maxLines: 1,
                  style: AppStyles.productName,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          Flexible(
            child: Row(
              children: [
                Text("EGP", style: AppStyles.productName),
                SizedBox(width: 10.w,),
                Text(price??"", style: AppStyles.productName),
                SizedBox(width: 10.w,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(priceBefore??"",
                        style: AppStyles.productName.copyWith(
                            fontSize: 11.sp, color: AppColors.border)),

                    Image.asset(
                      "assets/images/line.png",
                      width: 49.w,
                    )
                  ],
                )
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                Text("Review",
                    style: AppStyles.productName.copyWith(fontSize: 12.sp)),
                Text("($rate)",
                    style: AppStyles.productName.copyWith(fontSize: 12.sp)),
                Icon(
                  Icons.star_rate,
                  color: Colors.yellow,
                  size: 15.sp,
                ),
                Spacer(),
                Image.asset("assets/images/pluse.png",fit: BoxFit.fill,)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
