class UserModel {
  int? id;
  String? name;
  String? email;
  String? password;
  String? gender;
  String? place_of_birth;
  String? date_of_birth;
  String? last_education;
  String? phone;
  String? address;
  String? pas_photo;
  String? identity_card;
  String? roles;
  String? access_token;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.gender,
      this.place_of_birth,
      this.date_of_birth,
      this.last_education,
      this.phone,
      this.address,
      this.pas_photo,
      this.identity_card,
      this.roles,
      this.access_token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    gender = json['gender'];
    place_of_birth = json['place_of_birth'];
    date_of_birth = json['date_of_birth'];
    last_education = json['last_education'];
    phone = json['phone'];
    address = json['address'];
    pas_photo = json['pas_photo'];
    identity_card = json['identity_card'];
    roles = json['roles'];
    access_token = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'gender': gender,
      'place_of_birth': place_of_birth,
      'date_of_birth': date_of_birth,
      'last_education': last_education,
      'phone': phone,
      'address': address,
      'pas_photo': pas_photo,
      'identity_card': identity_card,
      'roles': roles,
      'access_token': access_token,
    };
  }
}
