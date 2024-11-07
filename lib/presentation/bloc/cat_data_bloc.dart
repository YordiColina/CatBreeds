import 'package:catbreeds/data/repositories/cat_data_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/cat_data_model.dart';

part 'cat_data_event.dart';

part 'cat_data_state.dart';

class CatDataBloc extends Bloc<GetCatDataEvent, CatDataState> {
  CatDataBloc() : super(CatDataState()) {
    on<getListCatData>(_getCatDataList);
  }
  final CatRepository _catRepository = CatRepository();


  Future<void> _getCatDataList(getListCatData event,
      Emitter<CatDataState> emit,) async {
    try {
    List<CatData> catData = await _catRepository.getCatBreeds();
    if(catData.isNotEmpty) {
      emit(state.copyWith(catData: catData, status: true));
    } else {
      emit(state.copyWith( status: false));
    }
    } catch (e) {
      print(e);
      emit(state.copyWith( status: false));
    }
  }
}







