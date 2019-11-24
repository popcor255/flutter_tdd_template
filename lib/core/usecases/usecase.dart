import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../error/failures.dart';

//This is a usecase implmentation
//core has the abstract usecase
//class cause very class uses it

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class Params extends Equatable {
  final int number;

  Params({@required this.number});

  @override
  // TODO: implement props
  List<Object> get props => [number];
}
