import 'package:the_cat_flutter/core/resources/data_state.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_breed.dart';

abstract class CatBreedRepository {
  Future<DataState<List<CatBreedEntity>>> getCatBreeds();
}