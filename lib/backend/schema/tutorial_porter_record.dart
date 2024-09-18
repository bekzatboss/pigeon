import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorialPorterRecord extends FirestoreRecord {
  TutorialPorterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "porter_tutorial_pic" field.
  String? _porterTutorialPic;
  String get porterTutorialPic => _porterTutorialPic ?? '';
  bool hasPorterTutorialPic() => _porterTutorialPic != null;

  void _initializeFields() {
    _porterTutorialPic = snapshotData['porter_tutorial_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutorial_porter');

  static Stream<TutorialPorterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutorialPorterRecord.fromSnapshot(s));

  static Future<TutorialPorterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutorialPorterRecord.fromSnapshot(s));

  static TutorialPorterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutorialPorterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutorialPorterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutorialPorterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutorialPorterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutorialPorterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutorialPorterRecordData({
  String? porterTutorialPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'porter_tutorial_pic': porterTutorialPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutorialPorterRecordDocumentEquality
    implements Equality<TutorialPorterRecord> {
  const TutorialPorterRecordDocumentEquality();

  @override
  bool equals(TutorialPorterRecord? e1, TutorialPorterRecord? e2) {
    return e1?.porterTutorialPic == e2?.porterTutorialPic;
  }

  @override
  int hash(TutorialPorterRecord? e) =>
      const ListEquality().hash([e?.porterTutorialPic]);

  @override
  bool isValidKey(Object? o) => o is TutorialPorterRecord;
}
