import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsRecord extends FirestoreRecord {
  GoalsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  bool hasProtein() => _protein != null;

  // "carbohydrates" field.
  int? _carbohydrates;
  int get carbohydrates => _carbohydrates ?? 0;
  bool hasCarbohydrates() => _carbohydrates != null;

  // "fats" field.
  int? _fats;
  int get fats => _fats ?? 0;
  bool hasFats() => _fats != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "calories" field.
  int? _calories;
  int get calories => _calories ?? 0;
  bool hasCalories() => _calories != null;

  void _initializeFields() {
    _protein = castToType<int>(snapshotData['protein']);
    _carbohydrates = castToType<int>(snapshotData['carbohydrates']);
    _fats = castToType<int>(snapshotData['fats']);
    _user = snapshotData['user'] as DocumentReference?;
    _calories = castToType<int>(snapshotData['calories']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goals');

  static Stream<GoalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoalsRecord.fromSnapshot(s));

  static Future<GoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoalsRecord.fromSnapshot(s));

  static GoalsRecord fromSnapshot(DocumentSnapshot snapshot) => GoalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoalsRecordData({
  int? protein,
  int? carbohydrates,
  int? fats,
  DocumentReference? user,
  int? calories,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'protein': protein,
      'carbohydrates': carbohydrates,
      'fats': fats,
      'user': user,
      'calories': calories,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoalsRecordDocumentEquality implements Equality<GoalsRecord> {
  const GoalsRecordDocumentEquality();

  @override
  bool equals(GoalsRecord? e1, GoalsRecord? e2) {
    return e1?.protein == e2?.protein &&
        e1?.carbohydrates == e2?.carbohydrates &&
        e1?.fats == e2?.fats &&
        e1?.user == e2?.user &&
        e1?.calories == e2?.calories;
  }

  @override
  int hash(GoalsRecord? e) => const ListEquality()
      .hash([e?.protein, e?.carbohydrates, e?.fats, e?.user, e?.calories]);

  @override
  bool isValidKey(Object? o) => o is GoalsRecord;
}
