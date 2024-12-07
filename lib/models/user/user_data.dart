
class UserData {
  final String uid;
  String name;
  bool isNewUser;
  String email;


  UserData({
    required this.uid,
    required this.name,
    required this.isNewUser,
    required this.email,
  });

  void updateName(String name) => this.name = name;

  String getEmail() {
    if (email.contains("@email")) {
      return "";
    }
    return email;
  }

  @override
  String toString() => "$uid::$name::$isNewUser::$email";

}