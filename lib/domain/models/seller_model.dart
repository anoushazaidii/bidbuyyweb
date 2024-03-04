class SellerModel {
  String? uid;
  String? profileImage;
  String? name;
  String? phone;
  String? email;
  String? idCardFrontImage;
  String? idCardBackImage;
  String? country;
  String? state;
  String? area;
  String? address;
  String? fullName;
  String? iban;
  String? accountNumber;
  String? bank;
  String? branchCode;
  double? lat;
  double? long;
  String? type;
  String? deviceToken;

  SellerModel({
    this.lat,
    this.long,
    required this.uid,
    required this.profileImage,
    required this.name,
    required this.phone,
    required this.email,
    required this.idCardFrontImage,
    required this.idCardBackImage,
    required this.country,
    required this.state,
    required this.area,
    required this.address,
    required this.fullName,
    required this.iban,
    required this.accountNumber,
    required this.bank,
    required this.branchCode,
    required this.deviceToken,
    this.type,
  });

  Map<String, dynamic> toMap(SellerModel user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uid;
    data['profileImage'] = user.profileImage;
    data['name'] = user.name;
    data['lat'] = user.lat;
    data['long'] = user.long;
    data['phone'] = user.phone;
    data['email'] = user.email;
    data['idCardFrontImage'] = user.idCardFrontImage;
    data['idCardBackImage'] = user.idCardBackImage;
    data['country'] = user.country;
    data['state'] = user.state;
    data['area'] = user.area;
    data['address'] = user.address;
    data['fullName'] = user.fullName;
    data['iban'] = user.iban;
    data['accountNumber'] = user.accountNumber;
    data['bank'] = user.bank;
    data['branchCode'] = user.branchCode;
    data['deviceToken'] = user.deviceToken;
    data['type'] = user.type;

    return data;
  }

  SellerModel.fromMap(Map<String, dynamic> mapData) {
    uid = mapData['uid'];
    profileImage = mapData['profileImage'];
    name = mapData['name'];
    phone = mapData['phone'];
    lat = mapData['lat'];
    long = mapData['long'];
    email = mapData['email'];
    idCardFrontImage = mapData['idCardFrontImage'];
    idCardBackImage = mapData['idCardBackImage'];
    country = mapData['country'];
    state = mapData['state'];
    area = mapData['area'];
    address = mapData['address'];
    fullName = mapData['fullName'];
    iban = mapData['iban'];
    accountNumber = mapData['accountNumber'];
    bank = mapData['bank'];
    branchCode = mapData['branchCode'];
    deviceToken = mapData['deviceToken'];
    type = mapData['type'];
  }
}
