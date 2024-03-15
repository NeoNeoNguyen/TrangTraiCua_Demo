import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'taikhoan_event.dart';
part 'taikhoan_state.dart';

class TaikhoanBloc extends Bloc<TaikhoanEvent, TaikhoanState> {
  TaikhoanBloc() : super(TaikhoanInitial()) {
    on<TaikhoanEvent>((event, emit) {

    });
  }
}
