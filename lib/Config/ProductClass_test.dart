import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routetask/Features/HomeScreen/presentation/Bloc/home_bloc.dart';

import '../Core/Injection.dart';
import '../Core/Utils/Observers.dart';
import '../Features/HomeScreen/domain/use_cases/HomeUseCase.dart';

class ProTest {
  var count;
  final HomeUsecase? homeUsecase;


  ProTest(this.homeUsecase,this.count);

  productsTest() async{
    var pro= await homeUsecase?.call();
    pro?.all((r) => count==r.limit);


  }
}
