import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_favorites_dto.g.dart';

@JsonSerializable()
class AddToFavoritesDto {
  final String id;
  final String type;

  AddToFavoritesDto(this.id, this.type);

  Map<String, dynamic> toJson() => _$AddToFavoritesDtoToJson(this);

  factory AddToFavoritesDto.fromActivityId(String id) => AddToFavoritesDto(
        id,
        'Event',
      );
}
