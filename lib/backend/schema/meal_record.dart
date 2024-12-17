import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MealRecord extends FirestoreRecord {
  MealRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  bool hasProtein() => _protein != null;

  // "Carbs" field.
  double? _carbs;
  double get carbs => _carbs ?? 0.0;
  bool hasCarbs() => _carbs != null;

  // "Fat" field.
  double? _fat;
  double get fat => _fat ?? 0.0;
  bool hasFat() => _fat != null;

  // "Calories" field.
  double? _calories;
  double get calories => _calories ?? 0.0;
  bool hasCalories() => _calories != null;

  // "Notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "date_formatted" field.
  String? _dateFormatted;
  String get dateFormatted => _dateFormatted ?? '';
  bool hasDateFormatted() => _dateFormatted != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _protein = castToType<double>(snapshotData['Protein']);
    _carbs = castToType<double>(snapshotData['Carbs']);
    _fat = castToType<double>(snapshotData['Fat']);
    _calories = castToType<double>(snapshotData['Calories']);
    _notes = snapshotData['Notes'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _dateFormatted = snapshotData['date_formatted'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meal');

  static Stream<MealRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MealRecord.fromSnapshot(s));

  static Future<MealRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MealRecord.fromSnapshot(s));

  static MealRecord fromSnapshot(DocumentSnapshot snapshot) => MealRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MealRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MealRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MealRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MealRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMealRecordData({
  String? name,
  double? protein,
  double? carbs,
  double? fat,
  double? calories,
  String? notes,
  DocumentReference? user,
  DateTime? date,
  String? dateFormatted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Protein': protein,
      'Carbs': carbs,
      'Fat': fat,
      'Calories': calories,
      'Notes': notes,
      'user': user,
      'date': date,
      'date_formatted': dateFormatted,
    }.withoutNulls,
  );

  return firestoreData;
}

class MealRecordDocumentEquality implements Equality<MealRecord> {
  const MealRecordDocumentEquality();

  @override
  bool equals(MealRecord? e1, MealRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.protein == e2?.protein &&
        e1?.carbs == e2?.carbs &&
        e1?.fat == e2?.fat &&
        e1?.calories == e2?.calories &&
        e1?.notes == e2?.notes &&
        e1?.user == e2?.user &&
        e1?.date == e2?.date &&
        e1?.dateFormatted == e2?.dateFormatted;
  }

  @override
  int hash(MealRecord? e) => const ListEquality().hash([
        e?.name,
        e?.protein,
        e?.carbs,
        e?.fat,
        e?.calories,
        e?.notes,
        e?.user,
        e?.date,
        e?.dateFormatted
      ]);

  @override
  bool isValidKey(Object? o) => o is MealRecord;
}
