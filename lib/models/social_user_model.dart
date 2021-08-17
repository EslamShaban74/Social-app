class SocialUserModel {
  String name;
  String email;
  String phone;
  String uId;
  String image;
  bool isEmailVerified;

  SocialUserModel(
    this.name,
    this.email,
    this.phone,
    this.uId,
    this.image,
    this.isEmailVerified,
  );

  SocialUserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    image = json['image'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'uId': uId,
      'image': image,
      'isEmailVerified': isEmailVerified,
    };
  }
}
