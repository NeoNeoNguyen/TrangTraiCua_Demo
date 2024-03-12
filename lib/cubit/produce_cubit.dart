import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'produce_state.dart';

class ProduceCubit extends Cubit<ProduceState> {
  ProduceCubit() : super(ProduceInitial());
}
