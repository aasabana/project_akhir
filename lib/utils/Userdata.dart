class OurUser {
  String uid;
  String email;
  String fullName;

  OurUser({
    required this.uid,
    required this.email,
    required this.fullName,
  });

//   factory OurUser.fromMap(map) {
//     return OurUser(
//         uid: map['uid'],
//         email: map['email'],
//         role: map['role'],
//         fullName: map['fullname']);
//   }
// // sending data
//   Map<String, dynamic> toMap() {
//     return {
//       'uid': uid,
//       'email': email,
//       'role': role,
//       'fullName': fullName,
//     };
//   }
}

// class VerifEmail {
//   final String uid;
//   final bool emailverified;

//   VerifEmail({
//     required this.uid,
//     required this.emailverified,
//   });
// }
