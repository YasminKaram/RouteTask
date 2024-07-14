import 'package:dartz/dartz.dart';

import '../../../../Core/Error/Failures.dart';
import '../../data/models/ProductModel.dart';
import '../entities/ProductEntity.dart';

 abstract class RepoHome{
  Future<Either<Failures, ProductModel>>? getProducts();
}