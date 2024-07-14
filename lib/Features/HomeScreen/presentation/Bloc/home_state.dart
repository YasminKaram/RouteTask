part of 'home_bloc.dart';

enum Screenstatus { init, productloading, productsuccess, ProductFailure }

@immutable
class HomeState {
  Screenstatus? screenstatus;
  Failures? failures;
  ProductModel? productModel;

  HomeState({this.screenstatus, this.failures, this.productModel});

  HomeState copyWith(
      {Screenstatus? screenstatus,
      Failures? failures,
      ProductModel? productModel}) {
    return HomeState(screenstatus: screenstatus ?? this.screenstatus,
        productModel: productModel ?? this.productModel,
        failures: failures ?? this.failures);
  }
}

final class HomeInitial extends HomeState {
  HomeInitial():super(screenstatus: Screenstatus.init);
}
