// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:the_cat_flutter/core/resources/data_state.dart';
import 'package:the_cat_flutter/core/usecase/usecase.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_breed.dart';
import 'package:the_cat_flutter/features/home/domain/repository/cat_breed_repository.dart';

class GetBreedsUseCase implements Usecase<DataState<List<CatBreedEntity>>, void> {
  final CatBreedRepository _catBreedRepository;
  
  GetBreedsUseCase(
    this._catBreedRepository,
  );
  
  @override
  Future<DataState<List<CatBreedEntity>>> call({void params}) {
    return _catBreedRepository.getCatBreeds();
  }
}
