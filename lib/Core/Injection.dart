import 'package:get_it/get_it.dart';
import 'package:routetask/Core/Api/ApiManger.dart';
import 'package:routetask/Features/HomeScreen/data/data_sources/Remote/DsHome.dart';
import 'package:routetask/Features/HomeScreen/data/data_sources/Remote/DsHomeImp.dart';
import 'package:routetask/Features/HomeScreen/data/models/ProductModel.dart';
import 'package:routetask/Features/HomeScreen/data/repositories/RepohomeImp.dart';
import 'package:routetask/Features/HomeScreen/domain/repositories/RepoHome.dart';
import 'package:routetask/Features/HomeScreen/domain/use_cases/HomeUseCase.dart';
import 'package:routetask/Features/HomeScreen/presentation/Bloc/home_bloc.dart';

final inj=GetIt.instance;
Future<void>setup()async{

  inj.registerSingleton<ApiManger>(ApiManger());
  inj.registerFactory<DsHome>(() => DsHomeImpl(inj()));
  inj.registerFactory<RepoHome>(() => RepoImp(inj()));
  inj.registerFactory(() => HomeUsecase(inj()));
  inj.registerFactory(() => HomeBloc(inj()));

  
}