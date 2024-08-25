import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_store/utils/formatters/formatter.dart';

class UserModel {
  UserModel(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.profilePicture,
      required this.id,
      required this.username,
      required this.email});

  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  String get fullName => '$firstName $lastName';

  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split(' ');

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : ' ';

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'me_$camelCaseUsername';
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
      firstName: '',
      lastName: '',
      phoneNumber: '',
      profilePicture: '',
      id: '',
      username: '',
      email: '');

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documnet) {
    if (documnet.data() != null) {
      final data = documnet.data()!;
      return UserModel(
        id: documnet.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      return UserModel.empty();
    }
  }
}
