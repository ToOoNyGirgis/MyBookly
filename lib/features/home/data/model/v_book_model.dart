class VBookModel {
  final String kind;
  final int totalItems;
  final List<Items> items;

  VBookModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory VBookModel.fromJson(Map<String, dynamic> json) {
    return VBookModel(
      kind: json['kind'],
      totalItems: json['totalItems'],
      items: (json['items'] as List<dynamic>)
          .map((item) => Items.fromJson(item))
          .toList(),
    );
  }
}

class Items {
  final String id;
  final VolumeInfo volumeInfo;

  Items({
    required this.id,
    required this.volumeInfo,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
      id: json['id'],
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
    );
  }
}

class VolumeInfo {
  final String? title;
  final String? description;
  final String image;
  final int? pageCount;
  // final SaleInfo? saleInfo;

  VolumeInfo({
    required this.title,
    this.description,
    required this.image,
    this.pageCount,
     // this.saleInfo,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      description: json['description'],
      image: json['imageLinks']['thumbnail'],
      pageCount: json['pageCount'],
      // saleInfo: SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

class SaleInfo {
  final String saleability;
  final int retailPrice;

  SaleInfo({required this.saleability, required this.retailPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      retailPrice: json['retailPrice']['amount'],
      saleability: json['saleability'],
    );
  }
}
