
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_cat_flutter/core/constants/constants.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_breed.dart';

part 'the_cat_api_service.g.dart';

@RestApi(baseUrl: theCatAPIBaseURL)
abstract class TheCatApiService {

  factory TheCatApiService(Dio dio) = _TheCatApiService;

  @GET('/breeds')
  Future<HttpResponse<List<CatBreedEntity>>> getCatBreeds({
    @Query('api_key') String? apiKey
  });
}