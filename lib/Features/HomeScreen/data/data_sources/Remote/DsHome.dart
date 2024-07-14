import 'package:dartz/dartz.dart';
import 'package:routetask/Features/HomeScreen/data/models/ProductModel.dart';

import '../../../../../Core/Error/Failures.dart';

abstract class DsHome{
  Future<Either<Failures,ProductModel>>? getProducts();
}