import 'package:dartz/dartz.dart';
import 'package:routetask/Core/Api/ApiManger.dart';
import 'package:routetask/Core/Error/Failures.dart';
import 'package:routetask/Features/HomeScreen/data/models/ProductModel.dart';

import 'DsHome.dart';

class DsHomeImpl implements DsHome{
  ApiManger apiManger;

  DsHomeImpl(this.apiManger);

  @override
  Future<Either<Failures, ProductModel>>? getProducts()async {
    try{
      var response= await apiManger.getData();
      ProductModel productModel=ProductModel.fromJson(response.data);
      return Right(productModel);

    }
    catch(e){
      return Left(RemoteFailures(e.toString()));
    }

  }

}