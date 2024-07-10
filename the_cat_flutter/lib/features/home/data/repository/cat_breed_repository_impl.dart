// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:the_cat_flutter/core/resources/data_state.dart';
import 'package:the_cat_flutter/env/env.dart';
import 'package:the_cat_flutter/features/home/data/data_sources/remote/the_cat_api_service.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_breed.dart';
import 'package:the_cat_flutter/features/home/domain/repository/cat_breed_repository.dart';

class CatBreedRepositoryImpl implements CatBreedRepository {

  final TheCatApiService _theCatApiService;

  CatBreedRepositoryImpl(
    this._theCatApiService,
  );

  @override
  Future<DataState<List<CatBreedEntity>>> getCatBreeds() async {
     try {
      final httpResponse = await _theCatApiService.getCatBreeds(
          apiKey: Env.theCatApiKey);

      if (httpResponse.response.statusCode == HttpStatus.ok) {

        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (ex) {
      return DataFailed(ex);
    }
  }

}
