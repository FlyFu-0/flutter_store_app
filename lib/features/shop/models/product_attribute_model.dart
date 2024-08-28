class ProductAttributeModel {
  String? name;
  final List<String>? values;

  ProductAttributeModel({this.values, this.name});

  toJson() {
    return {'Name': name, 'Values': values};
  }

  //TODO: all String variables do constant
  factory ProductAttributeModel.fromJson(Map<String, dynamic> documnet) {
    final data = documnet;
    print('in prod attr');
    if (data.isEmpty) {
      return ProductAttributeModel();
    }

    return ProductAttributeModel(
      name: data.containsKey('Name') ? data['Name'] : '',
      values: List<String>.from(data['Values']),
    );
  }
}
