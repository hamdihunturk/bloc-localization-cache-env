import 'package:equatable/equatable.dart';

class ProfileModel extends Equatable {
  final String firstName;
  final String lastName;
  final int age;
  final int phoneNumber;

  const ProfileModel({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.phoneNumber,
  });

  ProfileModel copyWith({
    String? firstName,
    String? lastName,
    int? age,
    int? phoneNumber,
  }) {
    return ProfileModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [firstName, lastName, age, phoneNumber];
}
