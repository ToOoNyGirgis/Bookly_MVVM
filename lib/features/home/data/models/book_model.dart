// class BookModel {
//
//   final SaleInfoEntity? saleInfo;
//   final SearchInfoEntity? searchInfo;
//   final String? kind;
//   final VolumeInfoEntity? volumeInfo;
//   final String? etag;
//   final String? id;
//   final AccessInfoEntity? accessInfo;
//   final String? selfLink;
//
//   BookModel({
//     this.saleInfo,
//     this.searchInfo,
//     this.kind,
//     this.volumeInfo,
//     this.etag,
//     this.id,
//     this.accessInfo,
//     this.selfLink,
//   });
//
//   factory BookModel.fromJson(Map<String, dynamic> json) {
//     return BookModel(
//       saleInfo: json['saleInfo'] == null ? null : SaleInfoEntity.fromJson(
//           json['saleInfo']),
//       searchInfo: json['searchInfo'] == null ? null : SearchInfoEntity.fromJson(
//           json['searchInfo']),
//       kind: json['kind'],
//       volumeInfo: json['volumeInfo'] == null ? null : VolumeInfoEntity.fromJson(
//           json['volumeInfo']),
//       etag: json['etag'],
//       id: json['id'],
//       accessInfo: json['accessInfo'] == null ? null : AccessInfoEntity.fromJson(
//           json['accessInfo']),
//       selfLink: json['selfLink'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'saleInfo': saleInfo?.toJson(),
//         'searchInfo': searchInfo?.toJson(),
//         'kind': kind,
//         'volumeInfo': volumeInfo?.toJson(),
//         'etag': etag,
//         'id': id,
//         'accessInfo': accessInfo?.toJson(),
//         'selfLink': selfLink,
//       };
// }
//
// class AccessInfoEntity {
//
//   final String? accessViewStatus;
//   final String? country;
//   final String? viewability;
//   final PdfEntity? pdf;
//   final String? webReaderLink;
//   final EpubEntity? epub;
//   final bool? publicDomain;
//   final bool? quoteSharingAllowed;
//   final bool? embeddable;
//   final String? textToSpeechPermission;
//
//   AccessInfoEntity({
//     this.accessViewStatus,
//     this.country,
//     this.viewability,
//     this.pdf,
//     this.webReaderLink,
//     this.epub,
//     this.publicDomain,
//     this.quoteSharingAllowed,
//     this.embeddable,
//     this.textToSpeechPermission,
//   });
//
//   factory AccessInfoEntity.fromJson(Map<String, dynamic> json) {
//     return AccessInfoEntity(
//       accessViewStatus: json['accessViewStatus'],
//       country: json['country'],
//       viewability: json['viewability'],
//       pdf: json['pdf'] == null ? null : PdfEntity.fromJson(json['pdf']),
//       webReaderLink: json['webReaderLink'],
//       epub: json['epub'] == null ? null : EpubEntity.fromJson(json['epub']),
//       publicDomain: json['publicDomain'],
//       quoteSharingAllowed: json['quoteSharingAllowed'],
//       embeddable: json['embeddable'],
//       textToSpeechPermission: json['textToSpeechPermission'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'accessViewStatus': accessViewStatus,
//         'country': country,
//         'viewability': viewability,
//         'pdf': pdf?.toJson(),
//         'webReaderLink': webReaderLink,
//         'epub': epub?.toJson(),
//         'publicDomain': publicDomain,
//         'quoteSharingAllowed': quoteSharingAllowed,
//         'embeddable': embeddable,
//         'textToSpeechPermission': textToSpeechPermission,
//       };
// }
//
// class EpubEntity {
//
//   final bool? isAvailable;
//
//   EpubEntity({
//     this.isAvailable,
//   });
//
//   factory EpubEntity.fromJson(Map<String, dynamic> json) {
//     return EpubEntity(
//       isAvailable: json['isAvailable'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'isAvailable': isAvailable,
//       };
// }
//
// class PdfEntity {
//
//   final bool? isAvailable;
//
//   PdfEntity({
//     this.isAvailable,
//   });
//
//   factory PdfEntity.fromJson(Map<String, dynamic> json) {
//     return PdfEntity(
//       isAvailable: json['isAvailable'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'isAvailable': isAvailable,
//       };
// }
//
// class VolumeInfoEntity {
//
//   final List<IndustryIdentifiersItemEntity>? industryIdentifiers;
//   final num? pageCount;
//   final String? printType;
//   final ReadingModesEntity? readingModes;
//   final String? previewLink;
//   final String? canonicalVolumeLink;
//   final String? description;
//   final String? language;
//   final String? title;
//   final ImageLinksEntity? imageLinks;
//   final PanelizationSummaryEntity? panelizationSummary;
//   final String? publisher;
//   final String? publishedDate;
//   final List<dynamic>? categories;
//   final String? maturityRating;
//   final bool? allowAnonLogging;
//   final String? contentVersion;
//   final List<dynamic>? authors;
//   final String? infoLink;
//
//   VolumeInfoEntity({
//     this.industryIdentifiers,
//     this.pageCount,
//     this.printType,
//     this.readingModes,
//     this.previewLink,
//     this.canonicalVolumeLink,
//     this.description,
//     this.language,
//     this.title,
//     this.imageLinks,
//     this.panelizationSummary,
//     this.publisher,
//     this.publishedDate,
//     this.categories,
//     this.maturityRating,
//     this.allowAnonLogging,
//     this.contentVersion,
//     this.authors,
//     this.infoLink,
//   });
//
//   factory VolumeInfoEntity.fromJson(Map<String, dynamic> json) {
//     return VolumeInfoEntity(
//       industryIdentifiers: json['industryIdentifiers'] == null ? null : List<
//           IndustryIdentifiersItemEntity>.from(
//           json['industryIdentifiers'].map((x) =>
//               IndustryIdentifiersItemEntity.fromJson(x))),
//       pageCount: json['pageCount'],
//       printType: json['printType'],
//       readingModes: json['readingModes'] == null ? null : ReadingModesEntity
//           .fromJson(json['readingModes']),
//       previewLink: json['previewLink'],
//       canonicalVolumeLink: json['canonicalVolumeLink'],
//       description: json['description'],
//       language: json['language'],
//       title: json['title'],
//       imageLinks: json['imageLinks'] == null ? null : ImageLinksEntity.fromJson(
//           json['imageLinks']),
//       panelizationSummary: json['panelizationSummary'] == null
//           ? null
//           : PanelizationSummaryEntity.fromJson(json['panelizationSummary']),
//       publisher: json['publisher'],
//       publishedDate: json['publishedDate'],
//       categories: json['categories'],
//       maturityRating: json['maturityRating'],
//       allowAnonLogging: json['allowAnonLogging'],
//       contentVersion: json['contentVersion'],
//       authors: json['authors'],
//       infoLink: json['infoLink'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'industryIdentifiers': industryIdentifiers?.map((e) => e.toJson())
//             .toList(),
//         'pageCount': pageCount,
//         'printType': printType,
//         'readingModes': readingModes?.toJson(),
//         'previewLink': previewLink,
//         'canonicalVolumeLink': canonicalVolumeLink,
//         'description': description,
//         'language': language,
//         'title': title,
//         'imageLinks': imageLinks?.toJson(),
//         'panelizationSummary': panelizationSummary?.toJson(),
//         'publisher': publisher,
//         'publishedDate': publishedDate,
//         'categories': categories,
//         'maturityRating': maturityRating,
//         'allowAnonLogging': allowAnonLogging,
//         'contentVersion': contentVersion,
//         'authors': authors,
//         'infoLink': infoLink,
//       };
// }
//
// class PanelizationSummaryEntity {
//
//   final bool? containsImageBubbles;
//   final bool? containsEpubBubbles;
//
//   PanelizationSummaryEntity({
//     this.containsImageBubbles,
//     this.containsEpubBubbles,
//   });
//
//   factory PanelizationSummaryEntity.fromJson(Map<String, dynamic> json) {
//     return PanelizationSummaryEntity(
//       containsImageBubbles: json['containsImageBubbles'],
//       containsEpubBubbles: json['containsEpubBubbles'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'containsImageBubbles': containsImageBubbles,
//         'containsEpubBubbles': containsEpubBubbles,
//       };
// }
//
// class ImageLinksEntity {
//
//   final String? thumbnail;
//   final String? smallThumbnail;
//
//   ImageLinksEntity({
//     this.thumbnail,
//     this.smallThumbnail,
//   });
//
//   factory ImageLinksEntity.fromJson(Map<String, dynamic> json) {
//     return ImageLinksEntity(
//       thumbnail: json['thumbnail'],
//       smallThumbnail: json['smallThumbnail'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'thumbnail': thumbnail,
//         'smallThumbnail': smallThumbnail,
//       };
// }
//
// class ReadingModesEntity {
//
//   final bool? image;
//   final bool? text;
//
//   ReadingModesEntity({
//     this.image,
//     this.text,
//   });
//
//   factory ReadingModesEntity.fromJson(Map<String, dynamic> json) {
//     return ReadingModesEntity(
//       image: json['image'],
//       text: json['text'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'image': image,
//         'text': text,
//       };
// }
//
// class IndustryIdentifiersItemEntity {
//
//   final String? identifier;
//   final String? type;
//
//   IndustryIdentifiersItemEntity({
//     this.identifier,
//     this.type,
//   });
//
//   factory IndustryIdentifiersItemEntity.fromJson(Map<String, dynamic> json) {
//     return IndustryIdentifiersItemEntity(
//       identifier: json['identifier'],
//       type: json['type'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'identifier': identifier,
//         'type': type,
//       };
// }
//
// class SearchInfoEntity {
//
//   final String? textSnippet;
//
//   SearchInfoEntity({
//     this.textSnippet,
//   });
//
//   factory SearchInfoEntity.fromJson(Map<String, dynamic> json) {
//     return SearchInfoEntity(
//       textSnippet: json['textSnippet'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'textSnippet': textSnippet,
//       };
// }
//
// class SaleInfoEntity {
//
//   final String? country;
//   final bool? isEbook;
//   final String? saleability;
//
//   SaleInfoEntity({
//     this.country,
//     this.isEbook,
//     this.saleability,
//   });
//
//   factory SaleInfoEntity.fromJson(Map<String, dynamic> json) {
//     return SaleInfoEntity(
//       country: json['country'],
//       isEbook: json['isEbook'],
//       saleability: json['saleability'],
//     );
//   }
//
//   Map<String, dynamic> toJson() =>
//       {
//         'country': country,
//         'isEbook': isEbook,
//         'saleability': saleability,
//       };
// }