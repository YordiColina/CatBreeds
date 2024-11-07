part of 'cat_data_bloc.dart';

class CatDataState extends Equatable {
  final List<CatData>? catData;
  final List<CatData>? filteredCatData;
  final bool? status;

  const CatDataState( {this.catData,this.filteredCatData,this.status});

  @override
  List<Object?> get props => [catData, filteredCatData ,status];

  CatDataState copyWith({
    List<CatData>? catData,
    List<CatData>? filteredCatData,
    bool? status,
  }) {
    return CatDataState(
      catData: catData ?? this.catData,
      filteredCatData: filteredCatData ?? this.filteredCatData,
      status: status ?? this.status,
    );
  }
}
