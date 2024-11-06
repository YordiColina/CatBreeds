import 'package:chopper/chopper.dart';
import '../config/secrets.dart'; // Asumiendo que 'theCatApiKey' está en este archivo

part 'cat_api_service.chopper.dart';

@ChopperApi(baseUrl: '/breeds')
abstract class CatApiService extends ChopperService {
  @Get()
  Future<Response<List<dynamic>>> fetchCatBreeds();

  static CatApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://api.thecatapi.com/v1'),
      services: [
        _$CatApiService(),
      ],
      interceptors: [
        const HeadersInterceptor({
          'x-api-key': theCatApiKey,
        }),
        HttpLoggingInterceptor(),
      ],
      converter: const JsonConverter(),
    );

    return _$CatApiService(client);
  }
}
