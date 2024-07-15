import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:routetask/Config/ProductClass_test.dart';
import 'package:routetask/Core/Injection.dart';
import 'package:routetask/Core/Utils/Observers.dart';
import 'package:routetask/Features/HomeScreen/data/models/ProductModel.dart';
import 'package:routetask/Features/HomeScreen/domain/repositories/RepoHome.dart';
import 'package:routetask/Features/HomeScreen/domain/use_cases/HomeUseCase.dart';
import 'package:routetask/Features/HomeScreen/presentation/Bloc/home_bloc.dart';
import 'package:routetask/Features/HomeScreen/presentation/pages/HomeScreen.dart';

void main() {
  test("Test class products", () {
    setup();
    //Arrange
    ProTest proTest=ProTest(inj(),30);
    //Act
    proTest.productsTest();
    //Assert
    expect(proTest.count, 30);
  });
}
