//This is a usecase implmentation
//core has the abstract usecase
//class cause very class uses it
import 'package:dartz/dartz.dart';
import 'package:tdd_template/core/error/failures.dart';
import 'package:tdd_template/core/usecases/usecase.dart';
import 'package:tdd_template/features/template/middleware/entities/entity_eg.dart';
import 'package:tdd_template/features/template/middleware/repos/repo_eg.dart';

class GetUsecaseExample implements UseCase<Entity, Params> {
  final ExampleRepo repo;

  GetUsecaseExample(this.repo);

  @override
  Future<Either<Failure, Entity>> call(Params params) async {
    return await repo.getUsecaseExample(params);
  }
}
