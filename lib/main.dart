import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routetask/Features/HomeScreen/presentation/Bloc/home_bloc.dart';

import 'Core/Injection.dart';
import 'Core/Utils/Observers.dart';
import 'Features/HomeScreen/presentation/pages/HomeScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(homeUsecase: inj()),
      child: ScreenUtilInit(
          designSize: Size(412, 892),
          ensureScreenSize: true,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: HomeScreen(),
            );
          }
      ),
    );
  }
}

