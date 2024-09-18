import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PorterTakePackageRecord extends FirestoreRecord {
  PorterTakePackageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "porter_take_create_time" field.
  DateTime? _porterTakeCreateTime;
  DateTime? get porterTakeCreateTime => _porterTakeCreateTime;
  bool hasPorterTakeCreateTime() => _porterTakeCreateTime != null;

  // "porter_phone_number" field.
  String? _porterPhoneNumber;
  String get porterPhoneNumber => _porterPhoneNumber ?? '';
  bool hasPorterPhoneNumber() => _porterPhoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "PorterChooseDeparture" field.
  String? _porterChooseDeparture;
  String get porterChooseDeparture => _porterChooseDeparture ?? '';
  bool hasPorterChooseDeparture() => _porterChooseDeparture != null;

  // "PorterChooseArrive" field.
  String? _porterChooseArrive;
  String get porterChooseArrive => _porterChooseArrive ?? '';
  bool hasPorterChooseArrive() => _porterChooseArrive != null;

  // "deviceToken" field.
  String? _deviceToken;
  String get deviceToken => _deviceToken ?? '';
  bool hasDeviceToken() => _deviceToken != null;

  // "portersMail" field.
  String? _portersMail;
  String get portersMail => _portersMail ?? '';
  bool hasPortersMail() => _portersMail != null;

  void _initializeFields() {
    _porterTakeCreateTime =
        snapshotData['porter_take_create_time'] as DateTime?;
    _porterPhoneNumber = snapshotData['porter_phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _porterChooseDeparture = snapshotData['PorterChooseDeparture'] as String?;
    _porterChooseArrive = snapshotData['PorterChooseArrive'] as String?;
    _deviceToken = snapshotData['deviceToken'] as String?;
    _portersMail = snapshotData['portersMail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PorterTakePackage');

  static Stream<PorterTakePackageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PorterTakePackageRecord.fromSnapshot(s));

  static Future<PorterTakePackageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PorterTakePackageRecord.fromSnapshot(s));

  static PorterTakePackageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PorterTakePackageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PorterTakePackageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PorterTakePackageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PorterTakePackageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PorterTakePackageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPorterTakePackageRecordData({
  DateTime? porterTakeCreateTime,
  String? porterPhoneNumber,
  DateTime? createdTime,
  String? porterChooseDeparture,
  String? porterChooseArrive,
  String? deviceToken,
  String? portersMail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'porter_take_create_time': porterTakeCreateTime,
      'porter_phone_number': porterPhoneNumber,
      'created_time': createdTime,
      'PorterChooseDeparture': porterChooseDeparture,
      'PorterChooseArrive': porterChooseArrive,
      'deviceToken': deviceToken,
      'portersMail': portersMail,
    }.withoutNulls,
  );

  return firestoreData;
}

class PorterTakePackageRecordDocumentEquality
    implements Equality<PorterTakePackageRecord> {
  const PorterTakePackageRecordDocumentEquality();

  @override
  bool equals(PorterTakePackageRecord? e1, PorterTakePackageRecord? e2) {
    return e1?.porterTakeCreateTime == e2?.porterTakeCreateTime &&
        e1?.porterPhoneNumber == e2?.porterPhoneNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.porterChooseDeparture == e2?.porterChooseDeparture &&
        e1?.porterChooseArrive == e2?.porterChooseArrive &&
        e1?.deviceToken == e2?.deviceToken &&
        e1?.portersMail == e2?.portersMail;
  }

  @override
  int hash(PorterTakePackageRecord? e) => const ListEquality().hash([
        e?.porterTakeCreateTime,
        e?.porterPhoneNumber,
        e?.createdTime,
        e?.porterChooseDeparture,
        e?.porterChooseArrive,
        e?.deviceToken,
        e?.portersMail
      ]);

  @override
  bool isValidKey(Object? o) => o is PorterTakePackageRecord;
}
