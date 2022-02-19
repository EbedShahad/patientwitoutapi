// To parse this JSON data, do
//
//     final patientVisit = patientVisitFromJson(jsonString);

import 'dart:convert';

PatientVisit patientVisitFromJson(String str) => PatientVisit.fromJson(json.decode(str));

String patientVisitToJson(PatientVisit data) => json.encode(data.toJson());

class PatientVisit {
    PatientVisit({
        this.data,
        this.code,
    });

    List<Datum> data;
    int code;

    factory PatientVisit.fromJson(Map<String, dynamic> json) => PatientVisit(
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
        this.visitDate,
        this.notes,
        this.attach,
        this.patientId,
        this.providerId,
        this.createdAt,
        this.updatedAt,
        this.compliants,
        this.provider,
    });

    int id;
    DateTime visitDate;
    String notes;
    String attach;
    int patientId;
    int providerId;
    DateTime createdAt;
    DateTime updatedAt;
    List<dynamic> compliants;
    dynamic provider;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        visitDate: DateTime.parse(json["visit_date"]),
        notes: json["notes"],
        attach: json["attach"],
        patientId: json["patient_id"],
        providerId: json["provider_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        compliants: List<dynamic>.from(json["compliants"].map((x) => x)),
        provider: json["provider"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "visit_date": "${visitDate.year.toString().padLeft(4, '0')}-${visitDate.month.toString().padLeft(2, '0')}-${visitDate.day.toString().padLeft(2, '0')}",
        "notes": notes,
        "attach": attach,
        "patient_id": patientId,
        "provider_id": providerId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "compliants": List<dynamic>.from(compliants.map((x) => x)),
        "provider": provider,
    };
}
