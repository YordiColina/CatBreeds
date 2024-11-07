import 'package:catbreeds/data/repositories/cat_data_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/cat_data_model.dart';

part 'cat_data_event.dart';

part 'cat_data_state.dart';

class CatDataBloc extends Bloc<GetCatDataEvent, CatDataState> {
  CatDataBloc() : super(CatDataState()) {
    on<GetListCatData>(_getCatDataList);
    on<SearchCats>(_onSearchCats);
  }

  final CatRepository _catRepository = CatRepository();


  Future<void> _getCatDataList(GetListCatData event,
      Emitter<CatDataState> emit,) async {
    try {
      List<CatData> catData = await _catRepository.getCatBreeds();
      if (catData.isNotEmpty) {
        emit(state.copyWith(
            catData: catData, filteredCatData: catData, status: true));
      } else {
        emit(state.copyWith(status: false));
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(status: false));
    }
  }

  void _onSearchCats(SearchCats event, Emitter<CatDataState> emit) {
    if (event.query.isEmpty) {
      emit(state.copyWith(filteredCatData: state.catData));
    } else {
      List<CatData>? filteredList = state.catData?.where((cat) {
        return cat.name.toLowerCase().contains(event.query.toLowerCase());
      }).toList();
      emit(state.copyWith(filteredCatData: filteredList));
    }
  }
}







