import 'dart:convert';

class Hari {
  int id;
  String hari;
  List<User> users;

  Hari({
    required this.id,
    required this.hari,  
    required this.users,
  });

  factory Hari.fromJson(Map<String, dynamic> json) {
    return Hari(
      id: json['id'],
      hari: json['hari'],
      users: User.fromJsonList(json['user']),
    );
  }

  static List<Hari> fromJsonList(String jsonString) {
    List<dynamic> jsonList = json.decode(jsonString)['data'];
    return jsonList.map((json) => Hari.fromJson(json)).toList();
  }
}

class User {
  int id;
  String nik;
  String nama;
  String username;
  String noRumah;
  int roleId;
  int jadwalId;

  User({
    required this.id,
    required this.nik,
    required this.nama,
    required this.username,
    required this.noRumah,
    required this.roleId,
    required this.jadwalId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      nik: json['nik'],
      nama: json['nama'],
      username: json['username'],
      noRumah: json['no_rumah'],
      roleId: json['role_id'],
      jadwalId: json['jadwal_id'],
    );
  }

  static List<User> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => User.fromJson(json)).toList();
  }
}