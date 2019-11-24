import 'package:dartz/dartz.dart';
import 'package:tdd_template/core/usecases/usecase.dart';
import 'package:tdd_template/features/template/middleware/entities/entity_eg.dart';

import '../../../../core/error/failures.dart';

abstract class ExampleRepo {
  Future<Either<Failure, Entity>> getUsecaseExample(Params params);
}
