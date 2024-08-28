class BrandModel {
  String id;
  String name;
  String image;
  bool? isFeatured;
  int? productCount;

  BrandModel(
      {required this.id,
      required this.name,
      required this.image,
      this.isFeatured,
      this.productCount});

  static BrandModel empty() => BrandModel(id: '', name: '', image: '');

  toJson() {
    return {
      'Id': id,
      'Name': name,
      'Image': image,
      'IsFeatured': isFeatured,
      'ProductCount': productCount,
    };
  }

  //TODO: all String variables do constant and in UserModel same
  factory BrandModel.fromJson(Map<String, dynamic> documnet) {
    final data = documnet;
    print('in brand model');

    if (data.isEmpty) {
      return BrandModel.empty();
    }
    return BrandModel(
      id: data['Id'] ?? '',
      name: data['Name'] ?? '',
      image: data['Image'] ?? '',
      isFeatured: data['IsFeatured'] ?? false,
      productCount: data['ProductsCount'] ?? 0,
    );
  }
}
