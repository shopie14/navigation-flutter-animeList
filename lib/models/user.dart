class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.dummy() {
    return User(
      id: 014,
      name: "Shopi Nurhidayanti",
      userName: "shoyaaa.is",
      email: "2006061@itg.ac.id",
      profileImage: "",
      phoneNumber: "081511548595",
    );
  }
}
