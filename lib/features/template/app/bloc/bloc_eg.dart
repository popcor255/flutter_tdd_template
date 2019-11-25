import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class BlocEg extends Bloc<EventEg, StateEg> {
  @override
  StateEg get initialState => InitialStateEg();

  @override
  Stream<StateEg> mapEventToState(
    EventEg event,
  ) async* {}
}
