import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String name;
  final String SpouseName;
  final String designation;
  final Timestamp AND;
  final String BAN;
  final Timestamp DOB;
  final String email;
  final String phone;

  UserModel(
    {
    required this.name,
    required this.SpouseName,
    required this.designation,
    required this.AND,
    required this.BAN,
    required this.DOB,
    required this.email,
    required this.phone,
    });
  //toDocument()
  Map<String, dynamic> toDocument() {
    return {
      'name': name,
      'SpouseName': SpouseName,
      'designation': designation,
      'AND': AND,
      'BAN': BAN,
      'DOB': DOB,
      'email': email,
      'phone': phone,
    };
  }
  //fromDocument()
  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel(
      name: doc['name'],
      SpouseName: doc['SpouseName'],
      designation: doc['designation'],
      AND: doc['AND'],
      BAN: doc['BAN'],
      DOB: doc['DOB'],
      email: doc['email'],
      phone: doc['phone'],
    );
  }
}
