import '../models/cat_data_model.dart';
import '../services/cat_api_service.dart';


class CatRepository {
  final CatApiService _catApiService;

  CatRepository(this._catApiService);

  Future<List<CatData>> getCatBreeds() async {
    final response = await _catApiService.fetchCatBreeds();
    if (response.isSuccessful) {
      return catDataFromMap(response.bodyString!);
    } else {
      throw Exception('Failed to load cat breeds');
    }
  }
}
