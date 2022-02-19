// To parse this JSON data, do
//
//     final ResultPAtient = ResultPAtientFromJson(jsonString);

import 'dart:convert';

ResultPAtient ResultPAtientFromJson(String str) => ResultPAtient.fromJson(json.decode(str));

String ResultPAtientToJson(ResultPAtient data) => json.encode(data.toJson());

class ResultPAtient {
    ResultPAtient({
        this.data,
        this.code,
    });

    Data data;
    int code;

    factory ResultPAtient.fromJson(Map<String, dynamic> json) => ResultPAtient(
        data: Data.fromJson(json["data"]),
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "code": code,
    };
}

class Data {
    Data({
        this.id,
        this.bloodGroup,
        this.height,
        this.dateOfBirth,
        this.userId,
        this.providerId,
        this.fileNumber,
        this.jobTitle,
        this.martialStatus,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.weights,
        this.visits,
        this.examinations,
        this.diagnoses,
        this.medical,
    });

    int id;
    String bloodGroup;
    String height;
    DateTime dateOfBirth;
    int userId;
    int providerId;
    String fileNumber;
    String jobTitle;
    String martialStatus;
    DateTime createdAt;
    DateTime updatedAt;
    User user;
    List<Weight> weights;
    List<dynamic> visits;
    List<dynamic> examinations;
    List<dynamic> diagnoses;
    Medical medical;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        bloodGroup: json["blood_group"],
        height: json["height"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        userId: json["user_id"],
        providerId: json["provider_id"],
        fileNumber: json["file_number"],
        jobTitle: json["job_title"],
        martialStatus: json["martial_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
        weights: List<Weight>.from(json["weights"].map((x) => Weight.fromJson(x))),
        visits: List<dynamic>.from(json["visits"].map((x) => x)),
        examinations: List<dynamic>.from(json["examinations"].map((x) => x)),
        diagnoses: List<dynamic>.from(json["diagnoses"].map((x) => x)),
        medical: Medical.fromJson(json["medical"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "blood_group": bloodGroup,
        "height": height,
        "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "user_id": userId,
        "provider_id": providerId,
        "file_number": fileNumber,
        "job_title": jobTitle,
        "martial_status": martialStatus,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
        "weights": List<dynamic>.from(weights.map((x) => x.toJson())),
        "visits": List<dynamic>.from(visits.map((x) => x)),
        "examinations": List<dynamic>.from(examinations.map((x) => x)),
        "diagnoses": List<dynamic>.from(diagnoses.map((x) => x)),
        "medical": medical.toJson(),
    };
}

class Medical {
    Medical({
        this.id,
        this.smoking,
        this.drinking,
        this.animals,
        this.socialHistory,
        this.attach,
        this.patientId,
        this.createdAt,
        this.updatedAt,
        this.diseases,
        this.drugs,
    });

    int id;
    String smoking;
    String drinking;
    String animals;
    String socialHistory;
    String attach;
    int patientId;
    DateTime createdAt;
    DateTime updatedAt;
    List<Disease> diseases;
    List<Drug> drugs;

    factory Medical.fromJson(Map<String, dynamic> json) => Medical(
        id: json["id"],
        smoking: json["smoking"],
        drinking: json["drinking"],
        animals: json["animals"],
        socialHistory: json["social_history"],
        attach: json["attach"],
        patientId: json["patient_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        diseases: List<Disease>.from(json["diseases"].map((x) => Disease.fromJson(x))),
        drugs: List<Drug>.from(json["drugs"].map((x) => Drug.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "smoking": smoking,
        "drinking": drinking,
        "animals": animals,
        "social_history": socialHistory,
        "attach": attach,
        "patient_id": patientId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "diseases": List<dynamic>.from(diseases.map((x) => x.toJson())),
        "drugs": List<dynamic>.from(drugs.map((x) => x.toJson())),
    };
}

class Disease {
    Disease({
        this.id,
        this.name,
        this.pivot,
    });

    int id;
    String name;
    DiseasePivot pivot;

    factory Disease.fromJson(Map<String, dynamic> json) => Disease(
        id: json["id"],
        name: json["name"],
        pivot: DiseasePivot.fromJson(json["pivot"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pivot": pivot.toJson(),
    };
}

class DiseasePivot {
    DiseasePivot({
        this.medicalId,
        this.diseaseId,
    });

    int medicalId;
    int diseaseId;

    factory DiseasePivot.fromJson(Map<String, dynamic> json) => DiseasePivot(
        medicalId: json["medical_id"],
        diseaseId: json["disease_id"],
    );

    Map<String, dynamic> toJson() => {
        "medical_id": medicalId,
        "disease_id": diseaseId,
    };
}

class Drug {
    Drug({
        this.id,
        this.name,
        this.pivot,
    });

    int id;
    String name;
    DrugPivot pivot;

    factory Drug.fromJson(Map<String, dynamic> json) => Drug(
        id: json["id"],
        name: json["name"],
        pivot: DrugPivot.fromJson(json["pivot"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pivot": pivot.toJson(),
    };
}

class DrugPivot {
    DrugPivot({
        this.medicalId,
        this.drugId,
    });

    int medicalId;
    int drugId;

    factory DrugPivot.fromJson(Map<String, dynamic> json) => DrugPivot(
        medicalId: json["medical_id"],
        drugId: json["drug_id"],
    );

    Map<String, dynamic> toJson() => {
        "medical_id": medicalId,
        "drug_id": drugId,
    };
}

class User {
    User({
        this.id,
        this.name,
        this.email,
        this.userPhone,
        this.userType,
        this.image,
        this.status,
        this.address,
        this.genderId,
        this.stateId,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String name;
    String email;
    String userPhone;
    String userType;
    dynamic image;
    String status;
    String address;
    int genderId;
    dynamic stateId;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        userPhone: json["user_phone"],
        userType: json["user_type"],
        image: json["image"],
        status: json["status"],
        address: json["address"],
        genderId: json["gender_id"],
        stateId: json["state_id"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "user_phone": userPhone,
        "user_type": userType,
        "image": image,
        "status": status,
        "address": address,
        "gender_id": genderId,
        "state_id": stateId,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Weight {
    Weight({
        this.id,
        this.weight,
        this.date,
        this.patientId,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    dynamic weight;
    dynamic date;
    int patientId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        id: json["id"],
        weight: json["weight"],
        date: json["date"],
        patientId: json["patient_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "weight": weight,
        "date": date,
        "patient_id": patientId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
