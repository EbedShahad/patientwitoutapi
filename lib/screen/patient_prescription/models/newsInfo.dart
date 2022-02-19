// To parse this JSON data, do
//
//     final drugsToPatient = drugsToPatientFromJson(jsonString);

import 'dart:convert';

DrugsToPatient drugsToPatientFromJson(String str) => DrugsToPatient.fromJson(json.decode(str));

String drugsToPatientToJson(DrugsToPatient data) => json.encode(data.toJson());

class DrugsToPatient {
    DrugsToPatient({
        this.data,
        this.code,
    });

    List<Datum> data;
    int code;

    factory DrugsToPatient.fromJson(Map<String, dynamic> json) => DrugsToPatient(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "code": code,
    };
}

class Datum {
    Datum({
        this.id,
        this.date,
        this.drugId,
        this.quantity,
        this.discription,
        this.status,
        this.patientId,
        this.providerId,
        this.createdAt,
        this.updatedAt,
        this.drug,
        this.provider,
    });

    int id;
    DateTime date;
    int drugId;
    int quantity;
    String discription;
    int status;
    int patientId;
    int providerId;
    DateTime createdAt;
    DateTime updatedAt;
    Drug drug;
    Provider provider;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        drugId: json["drug_id"],
        quantity: json["quantity"],
        discription: json["discription"],
        status: json["status"],
        patientId: json["patient_id"],
        providerId: json["provider_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        drug: Drug.fromJson(json["drug"]),
        provider: Provider.fromJson(json["provider"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "drug_id": drugId,
        "quantity": quantity,
        "discription": discription,
        "status": status,
        "patient_id": patientId,
        "provider_id": providerId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "drug": drug.toJson(),
        "provider": provider.toJson(),
    };
}

class Drug {
    Drug({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String name;
    dynamic createdAt;
    dynamic updatedAt;

    factory Drug.fromJson(Map<String, dynamic> json) => Drug(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

class Provider {
    Provider({
        this.id,
        this.bio,
        this.roleId,
        this.userId,
        this.createdAt,
        this.updatedAt,
        this.user,
    });

    int id;
    dynamic bio;
    int roleId;
    int userId;
    DateTime createdAt;
    DateTime updatedAt;
    User user;

    factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        id: json["id"],
        bio: json["bio"],
        roleId: json["role_id"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "bio": bio,
        "role_id": roleId,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
    };
}

class User {
    User({
        this.id,
        this.name,
    });

    int id;
    String name;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
