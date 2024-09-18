import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeletedFlightsOfPorterRecord extends FirestoreRecord {
  DeletedFlightsOfPorterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "estTime" field.
  DateTime? _estTime;
  DateTime? get estTime => _estTime;
  bool hasEstTime() => _estTime != null;

  // "porterPhone" field.
  String? _porterPhone;
  String get porterPhone => _porterPhone ?? '';
  bool hasPorterPhone() => _porterPhone != null;

  // "porterMail" field.
  String? _porterMail;
  String get porterMail => _porterMail ?? '';
  bool hasPorterMail() => _porterMail != null;

  // "departure" field.
  String? _departure;
  String get departure => _departure ?? '';
  bool hasDeparture() => _departure != null;

  // "arrive" field.
  String? _arrive;
  String get arrive => _arrive ?? '';
  bool hasArrive() => _arrive != null;

  void _initializeFields() {
    _estTime = snapshotData['estTime'] as DateTime?;
    _porterPhone = snapshotData['porterPhone'] as String?;
    _porterMail = snapshotData['porterMail'] as String?;
    _departure = snapshotData['departure'] as String?;
    _arrive = snapshotData['arrive'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deletedFlightsOfPorter');

  static Stream<DeletedFlightsOfPorterRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DeletedFlightsOfPorterRecord.fromSnapshot(s));

  static Future<DeletedFlightsOfPorterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DeletedFlightsOfPorterRecord.fromSnapshot(s));

  static DeletedFlightsOfPorterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeletedFlightsOfPorterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeletedFlightsOfPorterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeletedFlightsOfPorterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeletedFlightsOfPorterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeletedFlightsOfPorterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeletedFlightsOfPorterRecordData({
  DateTime? estTime,
  String? porterPhone,
  String? porterMail,
  String? departure,
  String? arrive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'estTime': estTime,
      'porterPhone': porterPhone,
      'porterMail': porterMail,
      'departure': departure,
      'arrive': arrive,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeletedFlightsOfPorterRecordDocumentEquality
    implements Equality<DeletedFlightsOfPorterRecord> {
  const DeletedFlightsOfPorterRecordDocumentEquality();

  @override
  bool equals(
      DeletedFlightsOfPorterRecord? e1, DeletedFlightsOfPorterRecord? e2) {
    return e1?.estTime == e2?.estTime &&
        e1?.porterPhone == e2?.porterPhone &&
        e1?.porterMail == e2?.porterMail &&
        e1?.departure == e2?.departure &&
        e1?.arrive == e2?.arrive;
  }

  @override
  int hash(DeletedFlightsOfPorterRecord? e) => const ListEquality().hash(
      [e?.estTime, e?.porterPhone, e?.porterMail, e?.departure, e?.arrive]);

  @override
  bool isValidKey(Object? o) => o is DeletedFlightsOfPorterRecord;
}
