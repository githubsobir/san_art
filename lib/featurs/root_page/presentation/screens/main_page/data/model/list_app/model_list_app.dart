import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/list_app/list_app_entities.dart';
part 'model_list_app.freezed.dart';
part 'model_list_app.g.dart';

@freezed
abstract class ModelListApp with _$ModelListApp {
  const factory ModelListApp({
    required dynamic postId,
    required dynamic id,
    required dynamic name,
    required dynamic email,
    required dynamic body,
    @Default([
      ListAppImages(images: "https://50.img.avito.st/image/1/1.3ldEvbaDcr4qFZK0dJrMUlAccLj6Fqi3EBZwvPwAcrTQEkh08x4.YAubJHdEeBWEdk9qUi6MaEzPProaA6RLiiUBDZ9wAtM"),
      ListAppImages(images: "https://i.pinimg.com/originals/ff/91/21/ff91219fa75ac6d2752e630cd24f5fe3.jpg")
    ]) List<ListAppImages> listAppImages,
  }) = _ModelListApp;

  factory ModelListApp.fromJson(Map<String, dynamic> json) => _$ModelListAppFromJson(json);

  const ModelListApp._();

  ListAppEntities toEntity() => ListAppEntities(
      postId: postId,
      id: id,
      name: name,
      email: email,
      body: body,
      listAppImages: listAppImages.map((image) => image.toEntity()).toList()
  );
}

@freezed
abstract class ListAppImages with _$ListAppImages {
  const factory ListAppImages({
    required dynamic images,
  }) = _ListAppImages;

  factory ListAppImages.fromJson(Map<String, dynamic> json) => _$ListAppImagesFromJson(json);

  const ListAppImages._();

  ListAppImagesEntities toEntity() => ListAppImagesEntities(
      images: images
  );
}