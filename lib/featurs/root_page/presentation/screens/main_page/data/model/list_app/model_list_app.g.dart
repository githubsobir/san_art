// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelListApp _$ModelListAppFromJson(Map<String, dynamic> json) =>
    _ModelListApp(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      email: json['email'],
      body: json['body'],
      listAppImages: (json['listAppImages'] as List<dynamic>?)
              ?.map((e) => ListAppImages.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            ListAppImages(
                images:
                    "https://50.img.avito.st/image/1/1.3ldEvbaDcr4qFZK0dJrMUlAccLj6Fqi3EBZwvPwAcrTQEkh08x4.YAubJHdEeBWEdk9qUi6MaEzPProaA6RLiiUBDZ9wAtM"),
            ListAppImages(
                images:
                    "https://i.pinimg.com/originals/ff/91/21/ff91219fa75ac6d2752e630cd24f5fe3.jpg")
          ],
    );

Map<String, dynamic> _$ModelListAppToJson(_ModelListApp instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
      'listAppImages': instance.listAppImages,
    };

_ListAppImages _$ListAppImagesFromJson(Map<String, dynamic> json) =>
    _ListAppImages(
      images: json['images'],
    );

Map<String, dynamic> _$ListAppImagesToJson(_ListAppImages instance) =>
    <String, dynamic>{
      'images': instance.images,
    };
