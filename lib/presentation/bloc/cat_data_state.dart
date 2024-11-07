part of 'cat_data_bloc.dart';



class CatDataState extends Equatable {
  final List<CatData>? catData;

  bool? status;

  CatDataState({this.catData,this.status});

  @override
  List<Object?> get props => [catData, status];

  CatDataState copyWith({
    List<CatData>? catData,
    bool? status,
  }) {
    return CatDataState(
      catData: catData ?? this.catData,
      status: status ?? this.status,
    );
  }
}
