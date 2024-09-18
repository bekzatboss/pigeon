import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorialSenderRecord extends FirestoreRecord {
  TutorialSenderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender_tutorial_pic" field.
  String? _senderTutorialPic;
  String get senderTutorialPic => _senderTutorialPic ?? '';
  bool hasSenderTutorialPic() => _senderTutorialPic != null;

  void _initializeFields() {
    _senderTutorialPic = snapshotData['sender_tutorial_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutorial_sender');

  static Stream<TutorialSenderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutorialSenderRecord.fromSnapshot(s));

  static Future<TutorialSenderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutorialSenderRecord.fromSnapshot(s));

  static TutorialSenderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutorialSenderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutorialSenderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutorialSenderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutorialSenderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutorialSenderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutorialSenderRecordData({
  String? senderTutorialPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender_tutorial_pic': senderTutorialPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutorialSenderRecordDocumentEquality
    implements Equality<TutorialSenderRecord> {
  const TutorialSenderRecordDocumentEquality();

  @override
  bool equals(TutorialSenderRecord? e1, TutorialSenderRecord? e2) {
    return e1?.senderTutorialPic == e2?.senderTutorialPic;
  }

  @override
  int hash(TutorialSenderRecord? e) =>
      const ListEquality().hash([e?.senderTutorialPic]);

  @override
  bool isValidKey(Object? o) => o is TutorialSenderRecord;
}
