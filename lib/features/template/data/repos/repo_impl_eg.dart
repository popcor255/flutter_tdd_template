import 'package:dartz/dartz.dart';
import 'package:tdd_template/core/error/failures.dart';
import 'package:tdd_template/core/usecases/usecase.dart';

import 'package:meta/meta.dart';
import 'package:tdd_template/features/template/middleware/entities/entity_eg.dart';
import 'package:tdd_template/features/template/middleware/repos/repo_eg.dart';

class ExampleRepoImpl implements ExampleRepo {
  final int id;

  ExampleRepoImpl({
    @required this.id,
  });

  @override
  Future<Either<Failure, Entity>> getUsecaseExample(Params params) {
    // TODO: implement getUsecaseExample
    return null;
  }
}
