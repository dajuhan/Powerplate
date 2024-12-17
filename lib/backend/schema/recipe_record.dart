import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeRecord extends FirestoreRecord {
  RecipeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "calories" field.
  int? _calories;
  int get calories => _calories ?? 0;
  bool hasCalories() => _calories != null;

  // "carbs" field.
  int? _carbs;
  int get carbs => _carbs ?? 0;
  bool hasCarbs() => _carbs != null;

  // "date" field.
  int? _date;
  int get date => _date ?? 0;
  bool hasDate() => _date != null;

  // "fat" field.
  int? _fat;
  int get fat => _fat ?? 0;
  bool hasFat() => _fat != null;

  // "favorited" field.
  bool? _favorited;
  bool get favorited => _favorited ?? false;
  bool hasFavorited() => _favorited != null;

  // "ingredients" field.
  String? _ingredients;
  String get ingredients => _ingredients ?? '';
  bool hasIngredients() => _ingredients != null;

  // "instructions" field.
  String? _instructions;
  String get instructions => _instructions ?? '';
  bool hasInstructions() => _instructions != null;

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  bool hasProtein() => _protein != null;

  // "servings" field.
  String? _servings;
  String get servings => _servings ?? '';
  bool hasServings() => _servings != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "saved" field.
  bool? _saved;
  bool get saved => _saved ?? false;
  bool hasSaved() => _saved != null;

  void _initializeFields() {
    _calories = castToType<int>(snapshotData['calories']);
    _carbs = castToType<int>(snapshotData['carbs']);
    _date = castToType<int>(snapshotData['date']);
    _fat = castToType<int>(snapshotData['fat']);
    _favorited = snapshotData['favorited'] as bool?;
    _ingredients = snapshotData['ingredients'] as String?;
    _instructions = snapshotData['instructions'] as String?;
    _protein = castToType<int>(snapshotData['protein']);
    _servings = snapshotData['servings'] as String?;
    _title = snapshotData['title'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _saved = snapshotData['saved'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recipe');

  static Stream<RecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipeRecord.fromSnapshot(s));

  static Future<RecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipeRecord.fromSnapshot(s));

  static RecipeRecord fromSnapshot(DocumentSnapshot snapshot) => RecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipeRecordData({
  int? calories,
  int? carbs,
  int? date,
  int? fat,
  bool? favorited,
  String? ingredients,
  String? instructions,
  int? protein,
  String? servings,
  String? title,
  DocumentReference? userId,
  bool? saved,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'calories': calories,
      'carbs': carbs,
      'date': date,
      'fat': fat,
      'favorited': favorited,
      'ingredients': ingredients,
      'instructions': instructions,
      'protein': protein,
      'servings': servings,
      'title': title,
      'userId': userId,
      'saved': saved,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipeRecordDocumentEquality implements Equality<RecipeRecord> {
  const RecipeRecordDocumentEquality();

  @override
  bool equals(RecipeRecord? e1, RecipeRecord? e2) {
    return e1?.calories == e2?.calories &&
        e1?.carbs == e2?.carbs &&
        e1?.date == e2?.date &&
        e1?.fat == e2?.fat &&
        e1?.favorited == e2?.favorited &&
        e1?.ingredients == e2?.ingredients &&
        e1?.instructions == e2?.instructions &&
        e1?.protein == e2?.protein &&
        e1?.servings == e2?.servings &&
        e1?.title == e2?.title &&
        e1?.userId == e2?.userId &&
        e1?.saved == e2?.saved;
  }

  @override
  int hash(RecipeRecord? e) => const ListEquality().hash([
        e?.calories,
        e?.carbs,
        e?.date,
        e?.fat,
        e?.favorited,
        e?.ingredients,
        e?.instructions,
        e?.protein,
        e?.servings,
        e?.title,
        e?.userId,
        e?.saved
      ]);

  @override
  bool isValidKey(Object? o) => o is RecipeRecord;
}
