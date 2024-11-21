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
  final SaleInfo saleInfo;

  Items({
    required this.id,
    required this.volumeInfo,
    required this.saleInfo,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
      id: json['id'],
      volumeInfo: VolumeInfo.fromJson(
        json['volumeInfo'],
      ),
      saleInfo: SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

class VolumeInfo {
  final String? title;
  final String? description;
  final String? image;
  final int? pageCount;

  // final SaleInfo? saleInfo;

  VolumeInfo({
    required this.title,
    this.description,
     this.image,
    this.pageCount,
    // this.saleInfo,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      description: json['description'],
      image: json['imageLinks']?['thumbnail'],
      pageCount: json['pageCount'],
      // saleInfo: SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

class SaleInfo {
  final String? saleability;
  final double? retailPrice;

  SaleInfo({this.saleability, this.retailPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      saleability: json['saleability'],
      retailPrice: (json['retailPrice']?['amount'] as num?)?.toDouble(),
    );
  }
}
