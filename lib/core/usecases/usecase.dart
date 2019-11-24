import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  //This is the call to check for errors
  //uncomment and import correct package
  //Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
