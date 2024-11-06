// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CatApiService extends CatApiService {
  _$CatApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CatApiService;

  @override
  Future<Response<List<dynamic>>> fetchCatBreeds() {
    final Uri $url = Uri.parse('/breeds');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
  }
}
