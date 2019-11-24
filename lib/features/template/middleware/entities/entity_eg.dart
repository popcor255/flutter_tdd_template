import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Entity extends Equatable {
  final int id;

  Entity({@required this.id});

  @override
  // TODO: implement props
  List<Object> get props => [id];
}
