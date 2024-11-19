class BookModel {
  final String kind;
  final int totalItems;
  final List<BookItem> items;

  BookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      totalItems: json['totalItems'],
      items: (json['items'] as List<dynamic>)
          .map((item) => BookItem.fromJson(item))
          .toList(),
    );
  }

}


class BookItem {
  final String id;
  final VolumeInfo volumeInfo;

  BookItem({
    required this.id,
    required this.volumeInfo,
  });

  factory BookItem.fromJson(Map<String, dynamic> json) {
    return BookItem(
      id: json['id'],
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
    );
  }


}


class VolumeInfo {
  final String title;
  final String? description;
  final String? image;
  final int? pageCount;

  VolumeInfo({
    required this.title,
    this.description,
    this.image,
    this.pageCount,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      description: json['description'],
      image: json['imageLinks']['thumbnail'],
      pageCount: json['pageCount'],
    );
  }


}
