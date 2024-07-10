// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CatWeightEntity extends Equatable {
  final String? imperial;
  final String? metric;

  const CatWeightEntity({this.imperial, this.metric});

  factory CatWeightEntity.fromJson(Map<String, dynamic> json) {
    return CatWeightEntity(
      imperial: json['imperial'],
      metric: json['metric'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imperial'] = this.imperial;
    data['metric'] = this.metric;
    return data;
  }

  @override
  List<Object?> get props => [imperial, metric];
}
