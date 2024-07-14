import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:routetask/Core/Error/Failures.dart';
import 'package:routetask/Features/HomeScreen/data/models/ProductModel.dart';
import 'package:routetask/Features/HomeScreen/domain/use_cases/HomeUseCase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get(context) => BlocProvider.of(context);
  static var query=TextEditingController();
   static List<Products>?data;
  final HomeUsecase homeUsecase;
  HomeBloc(this.homeUsecase) : super(HomeInitial()) {

    on<HomeEvent>((event, emit)async {
      if(event is getAllproduct ){
        emit(state.copyWith(screenstatus: Screenstatus.productloading));
        final pro= await homeUsecase.call();
        pro?.fold((l) {
          print(l);
          emit(state.copyWith(screenstatus: Screenstatus.ProductFailure,failures: Failures(l.message)));

        }, (r) {
          emit(state.copyWith(screenstatus: Screenstatus.productsuccess,productModel: r));
          data=r.products;
        });



      }

    });
  }
}
