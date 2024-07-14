import 'package:dartz/dartz.dart';
import 'package:routetask/Core/Error/Failures.dart';
import 'package:routetask/Features/HomeScreen/data/data_sources/Remote/DsHome.dart';
import 'package:routetask/Features/HomeScreen/data/models/ProductModel.dart';
import 'package:routetask/Features/HomeScreen/domain/entities/ProductEntity.dart';
import 'package:routetask/Features/HomeScreen/domain/repositories/RepoHome.dart';

class RepoImp extends RepoHome{
  DsHome dsHome;

  RepoImp(this.dsHome);

  @override
  Future<Either<Failures, ProductModel>>? getProducts() {
    try{
      return dsHome.getProducts();

    }
    catch(e){
      throw(e);

    }
  }


  }

