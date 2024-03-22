import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fliter_importcrab_event.dart';
part 'fliter_importcrab_state.dart';

class FliterImportcrabBloc extends Bloc<FliterImportcrabEvent, FliterImportcrabState> {
  FliterImportcrabBloc() : super(FliterImportcrabInitial()) {
    on<FliterImportcrabEvent>((event, emit) {

    });
  }
}
