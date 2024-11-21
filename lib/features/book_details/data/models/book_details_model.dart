class BookDetailsModel {
  final String id;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;

  BookDetailsModel(
      {required this.id, required this.selfLink, required this.volumeInfo ,required this.saleInfo});

  factory BookDetailsModel.fromJson(Map<String, dynamic> json) {
    return BookDetailsModel(
      id: json['id'],
      selfLink: json['selfLink'],
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
      saleInfo: SaleInfo.fromJson(json['saleInfo']),
    );
  }
}

class VolumeInfo {
  final String title;
  final String publisher;
  final String publishedDate;
  final String description;
  final ImageLinks imageLinks;

  VolumeInfo(
      {required this.title,
      required this.publisher,
      required this.publishedDate,
      required this.description,
      required this.imageLinks});

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      imageLinks: ImageLinks.fromJson(json['imageLinks']),
    );
  }
}

class ImageLinks {
  // final String smallThumbnail;
  final String thumbnail;
  // final String small;
  // final String medium;
  // final String large;
  // final String extraLarge;

  ImageLinks(
      {
        // required this.smallThumbnail,
      required this.thumbnail,
      // required this.small,
      // required this.medium,
      // required this.large,
      // required this.extraLarge,
      }
      );

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      // smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
      // small: json['small'],
      // medium: json['medium'],
      // large: json['large'],
      // extraLarge:json['extraLarge'],
    );
  }
}

class SaleInfo {
  final String? saleability;
  final double? amount;

  SaleInfo({this.saleability, this.amount});

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      saleability: json['saleability'],
      amount: (json['retailPrice']?['amount'] as num?)?.toDouble(),
    );
  }
}


