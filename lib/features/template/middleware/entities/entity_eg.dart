import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Entity extends Equatable {
  final int id;

  Entity({@required this.id});

  @override
  List<Object> get props => [id];
}
