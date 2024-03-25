import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'accout_event.dart';
part 'accout_state.dart';

class TaikhoanBloc extends Bloc<TaikhoanEvent, TaikhoanState> {
  TaikhoanBloc() : super(TaikhoanInitial()) {
    on<TaikhoanEvent>((event, emit) {

    });
  }
}
