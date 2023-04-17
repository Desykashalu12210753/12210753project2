import 'dart:convert';

class BeritaModel {
  String? autor;
  String? title;
  String? description;
  String? url;
  String? source;
  String? image;
  String? category;
  String? publishedAt;

  BeritaModel({
    this.autor,
    this.title,
    this.description,
    this.url,
    this.source,
    this.image,
    this.category,
    this.publishedAt,
  });

  factory BeritaModel.fromMap(Map<String, dynamic> data) => BeritaModel(
        autor: data['autor'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        url: data['url'] as String?,
        source: data['source'] as String?,
        image: data['image'] as String?,
        category: data['category'] as String?,
        publishedAt: data['published_at'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'autor': autor,
        'title': title,
        'description': description,
        'url': url,
        'source': source,
        'image': image,
        'category': category,
        'published_at': publishedAt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BeritaModel].
  factory BeritaModel.fromJson(String data) {
    return BeritaModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BeritaModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
