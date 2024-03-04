class ProductModel {
  String? sellerId;
  String? productId;
  String? productName;
  String? description;
  double? length;
  double? width;
  double? height;
  double? initialPrice;
  List<dynamic>? biddingList;
  List<dynamic>? categoriesList;
  List<dynamic>? photosList;

  ProductModel({
    this.sellerId,
    this.productId,
    this.productName,
    this.description,
    this.length,
    this.width,
    this.height,
    this.initialPrice,
    this.biddingList,
    this.categoriesList,
    this.photosList,
  });

  Map<String, dynamic> toMap(ProductModel product) {
    var data = Map<String, dynamic>();
    data['sellerId'] = product.sellerId;
    data['productId'] = product.productId;
    data['productName'] = product.productName;
    data['description'] = product.description;
    data['length'] = product.length;
    data['width'] = product.width;
    data['height'] = product.height;
    data['initialPrice'] = product.initialPrice;
    data['biddingList'] = product.biddingList;
    data['categoriesList'] = product.categoriesList;
    data['photosList'] = product.photosList;

    return data;
  }

  ProductModel.fromMap(Map<String, dynamic> mapData) {
    sellerId = mapData['sellerId'];
    productId = mapData['productId'];
    productName = mapData['productName'];
    description = mapData['description'];
    length = mapData['length'];
    width = mapData['width'];
    height = mapData['height'];
    initialPrice = mapData['initialPrice'];
    biddingList = List<dynamic>.from(mapData['biddingList'] ?? []);
    categoriesList = List<dynamic>.from(mapData['categoriesList'] ?? []);
    photosList = List<dynamic>.from(mapData['photosList'] ?? []);
  }
}
