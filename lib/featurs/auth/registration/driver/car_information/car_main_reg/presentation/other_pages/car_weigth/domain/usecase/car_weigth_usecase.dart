import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/entities/respond/car_weigth.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/repository/car_weigth_repository.dart';

@injectable
class CarWeightUsecase {
  CarWeightRepository carWeightRepository;

  CarWeightUsecase(this.carWeightRepository);

  Future<Result<List<CarWeightEntity>, Failure>> getData() async {
    var data = await carWeightRepository.getData();
    log(data.toString());
    return data; //await carWeightRepository.getData();
  }
}
