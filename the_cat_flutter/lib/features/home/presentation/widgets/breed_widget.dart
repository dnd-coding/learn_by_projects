import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_breed.dart';

class BreedWidget extends StatefulWidget {
  final CatBreedEntity? breed;
  const BreedWidget({
    super.key,
    this.breed,
  });

  @override
  State<BreedWidget> createState() => _BreedWidgetState();
}

class _BreedWidgetState extends State<BreedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 14, end: 14, bottom: 7, top: 7),
      height: MediaQuery.of(context).size.width / 2.2,
      child: Row(
        children: [
          CachedImage(breed: widget.breed),
          ImageInfo(breed: widget.breed),
        ],
      ),
    );
  }
}

class ImageInfo extends StatelessWidget {
  const ImageInfo({
    super.key,
    required this.breed,
  });

  final CatBreedEntity? breed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "${breed != null && breed != null ? breed!.name : ""}",
            style: const TextStyle(
              fontFamily: 'Butler',
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          Text(
              'Life span: ${breed != null && breed!.lifeSpan != null ? breed!.lifeSpan : ""}'),
          Expanded(
            child: Text(
              '${breed != null && breed!.description != null ? breed!.description : ""}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 20,),
          // BlocBuilder<LocalImagesBloc, LocalImagesState>(
          //   builder: (_, state) {
          //     final savedImageIds = state.images?.map((e) => e.id).toSet();
          //     bool isSaved = savedImageIds != null && savedImageIds.contains(image!.id);
          //     return GestureDetector(
          //       onTap: () {
          //         if (!isSaved) {
          //           context.read<LocalImagesBloc>().add(SaveImage(image!));
          //         } else {
          //           context.read<LocalImagesBloc>().add(DeleteImage(image!));
          //         }
          //       },
          //       child: Icon(
          //         isSaved ? Icons.favorite : Icons.favorite_outline,
          //         color: isSaved ? Colors.red : Colors.grey,
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.breed,
  });

  final CatBreedEntity? breed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: CachedNetworkImage(
        imageUrl: breed!.image != null ? breed!.image!.url! : "",
        imageBuilder: (context, imageProvider) => Container(
          padding: const EdgeInsetsDirectional.only(end: 14),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.08),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover)),
            ),
          ),
        ),
      ),
    );
  }
}