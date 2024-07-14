import 'package:dartz/dartz.dart';
import 'package:routetask/Features/HomeScreen/domain/repositories/RepoHome.dart';

import '../../../../Core/Error/Failures.dart';
import '../../data/models/ProductModel.dart';
import '../entities/ProductEntity.dart';

class HomeUsecase{
  RepoHome repoHome;

  HomeUsecase(this.repoHome);
  Future<Either<Failures, ProductModel>>? call()=>
      repoHome.getProducts();
}