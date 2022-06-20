class NewsModel {
  int? id_news;
  String? headline_news;
  String? description_news;
  String? picture;
  String? author;
  DateTime? createdAt;
  DateTime? updatedAt;

  NewsModel({
    this.id_news,
    this.headline_news,
    this.description_news,
    this.picture,
    this.author,
    this.createdAt,
    this.updatedAt,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    id_news = json['id_news'];
    headline_news = json['headline_news'];
    description_news = json['description_news'];
    picture = json['picture'];
    author = json['author'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id_news': id_news,
      'headline_news': headline_news,
      'description_news': description_news,
      'picture': picture,
      'author': author,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

// class UninitializedProductModel extends ProductModel {}
