// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CatImageEntity extends Equatable {
  final String? id;
  final int? width;
  final int? height;
  final String? url;

  const CatImageEntity({this.id, this.width, this.height, this.url});

  factory CatImageEntity.fromJson(Map<String, dynamic> json) {
    return CatImageEntity(
      id: json['id'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['width'] = this.width;
    data['height'] = this.height;
    data['url'] = this.url;
    return data;
  }

  @override
  List<Object?> get props => [id, width, height, url];
}
