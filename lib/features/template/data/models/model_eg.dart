import 'package:tdd_template/features/template/middleware/entities/entity_eg.dart';
import 'package:meta/meta.dart';

class ExampleModel extends Entity {
  ExampleModel({
    @required int id,
  }) : super(id: id);

  @override
  List<Object> get props => [this.id];
}
