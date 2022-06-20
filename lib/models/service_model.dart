class ServiceModel {
  int? id_service;
  String? service_type;
  String? description_service;
  DateTime? createdAt;
  DateTime? updatedAt;

  ServiceModel({
    this.id_service,
    this.service_type,
    this.description_service,
    this.createdAt,
    this.updatedAt,
  });

  ServiceModel.fromJson(Map<String, dynamic> json) {
    id_service = json['id_service'];
    service_type = json['service_type'];
    description_service = json['description_service'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id_service': id_service,
      'service_type': service_type,
      'description_service': description_service,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

// class UninitializedProductModel extends ProductModel {}
