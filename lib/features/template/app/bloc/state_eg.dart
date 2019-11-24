import 'package:equatable/equatable.dart';

abstract class StateEg extends Equatable {
  const StateEg();
}

class InitialStateEg extends StateEg {
  @override
  List<Object> get props => [];
}
