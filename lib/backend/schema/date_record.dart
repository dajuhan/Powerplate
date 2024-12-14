import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateRecord extends FirestoreRecord {
  DateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  bool hasProtein() => _protein != null;

  // "carbs" field.
  int? _carbs;
  int get carbs => _carbs ?? 0;
  bool hasCarbs() => _carbs != null;

  // "calories" field.
  int? _calories;
  int get calories => _calories ?? 0;
  bool hasCalories() => _calories != null;

  // "fats" field.
  int? _fats;
  int get fats => _fats ?? 0;
  bool hasFats() => _fats != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _protein = castToType<int>(snapshotData['protein']);
    _carbs = castToType<int>(snapshotData['carbs']);
    _calories = castToType<int>(snapshotData['calories']);
    _fats = castToType<int>(snapshotData['fats']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date');

  static Stream<DateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DateRecord.fromSnapshot(s));

  static Future<DateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DateRecord.fromSnapshot(s));

  static DateRecord fromSnapshot(DocumentSnapshot snapshot) => DateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDateRecordData({
  DateTime? date,
  int? protein,
  int? carbs,
  int? calories,
  int? fats,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'protein': protein,
      'carbs': carbs,
      'calories': calories,
      'fats': fats,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class DateRecordDocumentEquality implements Equality<DateRecord> {
  const DateRecordDocumentEquality();

  @override
  bool equals(DateRecord? e1, DateRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.protein == e2?.protein &&
        e1?.carbs == e2?.carbs &&
        e1?.calories == e2?.calories &&
        e1?.fats == e2?.fats &&
        e1?.user == e2?.user;
  }

  @override
  int hash(DateRecord? e) => const ListEquality()
      .hash([e?.date, e?.protein, e?.carbs, e?.calories, e?.fats, e?.user]);

  @override
  bool isValidKey(Object? o) => o is DateRecord;
}
