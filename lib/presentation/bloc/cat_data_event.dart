part of 'cat_data_bloc.dart';
abstract class GetCatDataEvent extends Equatable {

  GetCatDataEvent();

  @override
  List<Object> get props => []; // Equatable permite comparar objetos
}

class getListCatData extends GetCatDataEvent {
  getListCatData();

  @override
  List<Object> get props => [];
}