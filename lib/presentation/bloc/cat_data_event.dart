part of 'cat_data_bloc.dart';
abstract class GetCatDataEvent extends Equatable {

  GetCatDataEvent();

  @override
  List<Object> get props => [];
}

class GetListCatData extends GetCatDataEvent {
  GetListCatData();

  @override
  List<Object> get props => [];
}

class SearchCats extends GetCatDataEvent {
  final String query;

  SearchCats(this.query);
  @override
  List<Object> get props => [query];
}