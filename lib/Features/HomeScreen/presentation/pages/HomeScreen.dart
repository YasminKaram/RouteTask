
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routetask/Features/HomeScreen/presentation/widgets/ProductItem.dart';

import '../../../../Core/Utils/AppColors.dart';
import '../../../../Core/Utils/AppStyles.dart';
import '../Bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    HomeBloc.get(context).add(getAllproduct());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if(state.screenstatus==Screenstatus.productloading ){
              return Center(child: CircularProgressIndicator(),);
            }

            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 100.w,
                    height: 50.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 350.w,
                        child: SearchBar(
                          leading: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                            child: Icon(Icons.search,
                                color: AppColors.primaryColor, size: 24.sp),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.white),
                          controller: HomeBloc.query,
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.primaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              )),
                          textStyle: MaterialStatePropertyAll(
                            AppStyles.search.copyWith(
                                color: AppColors.secondary),
                          ),
                          hintText: "what do you search for?",
                          hintStyle: MaterialStatePropertyAll(AppStyles.search
                              .copyWith(color: AppColors.secondary)),
                          onChanged: (_) {
                            //ScreenAppBloc.get(context).add(getFood());
                          },
                          trailing: <Widget>[
                            Tooltip(
                              message: 'remove',
                              child: IconButton(
                                onPressed: () {
                                  // ScreenAppBloc.food.clear();
                                  // ScreenAppBloc.query.clear();
                                  // ScreenAppBloc.get(context).add(getFood());
                                },
                                icon: Icon(
                                  Icons.dangerous_outlined,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: AppColors.primaryColor,
                        size: 25.sp,
                      )
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Expanded(
                    child: GridView.builder(

                      itemCount: HomeBloc.data?.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),

                      itemBuilder: (context, index) {
                        return ProductItem(
                            HomeBloc.data?[index].thumbnail??"",
                            HomeBloc.data?[index].title??"",
                            HomeBloc.data?[index].price.toString()??"",
                            HomeBloc.data?[index].discountPercentage.toString()??"",
                            HomeBloc.data?[index].rating.toString()??"",HomeBloc.data?[index].description??"");
                      },
                    ),
                  )
                ]));
          },
        ),
      ),
    );
  }
}
