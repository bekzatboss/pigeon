import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SenderSendPackageRecord extends FirestoreRecord {
  SenderSendPackageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "sender_send_create_time" field.
  DateTime? _senderSendCreateTime;
  DateTime? get senderSendCreateTime => _senderSendCreateTime;
  bool hasSenderSendCreateTime() => _senderSendCreateTime != null;

  // "sender_phone_number" field.
  String? _senderPhoneNumber;
  String get senderPhoneNumber => _senderPhoneNumber ?? '';
  bool hasSenderPhoneNumber() => _senderPhoneNumber != null;

  // "SenderChooseDeparture" field.
  String? _senderChooseDeparture;
  String get senderChooseDeparture => _senderChooseDeparture ?? '';
  bool hasSenderChooseDeparture() => _senderChooseDeparture != null;

  // "SenderChooseArrive" field.
  String? _senderChooseArrive;
  String get senderChooseArrive => _senderChooseArrive ?? '';
  bool hasSenderChooseArrive() => _senderChooseArrive != null;

  // "SenderChoosePack" field.
  String? _senderChoosePack;
  String get senderChoosePack => _senderChoosePack ?? '';
  bool hasSenderChoosePack() => _senderChoosePack != null;

  // "senderMail" field.
  String? _senderMail;
  String get senderMail => _senderMail ?? '';
  bool hasSenderMail() => _senderMail != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _senderSendCreateTime =
        snapshotData['sender_send_create_time'] as DateTime?;
    _senderPhoneNumber = snapshotData['sender_phone_number'] as String?;
    _senderChooseDeparture = snapshotData['SenderChooseDeparture'] as String?;
    _senderChooseArrive = snapshotData['SenderChooseArrive'] as String?;
    _senderChoosePack = snapshotData['SenderChoosePack'] as String?;
    _senderMail = snapshotData['senderMail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SenderSendPackage');

  static Stream<SenderSendPackageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SenderSendPackageRecord.fromSnapshot(s));

  static Future<SenderSendPackageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SenderSendPackageRecord.fromSnapshot(s));

  static SenderSendPackageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SenderSendPackageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SenderSendPackageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SenderSendPackageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SenderSendPackageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SenderSendPackageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSenderSendPackageRecordData({
  DateTime? createdTime,
  DateTime? senderSendCreateTime,
  String? senderPhoneNumber,
  String? senderChooseDeparture,
  String? senderChooseArrive,
  String? senderChoosePack,
  String? senderMail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'sender_send_create_time': senderSendCreateTime,
      'sender_phone_number': senderPhoneNumber,
      'SenderChooseDeparture': senderChooseDeparture,
      'SenderChooseArrive': senderChooseArrive,
      'SenderChoosePack': senderChoosePack,
      'senderMail': senderMail,
    }.withoutNulls,
  );

  return firestoreData;
}

class SenderSendPackageRecordDocumentEquality
    implements Equality<SenderSendPackageRecord> {
  const SenderSendPackageRecordDocumentEquality();

  @override
  bool equals(SenderSendPackageRecord? e1, SenderSendPackageRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.senderSendCreateTime == e2?.senderSendCreateTime &&
        e1?.senderPhoneNumber == e2?.senderPhoneNumber &&
        e1?.senderChooseDeparture == e2?.senderChooseDeparture &&
        e1?.senderChooseArrive == e2?.senderChooseArrive &&
        e1?.senderChoosePack == e2?.senderChoosePack &&
        e1?.senderMail == e2?.senderMail;
  }

  @override
  int hash(SenderSendPackageRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.senderSendCreateTime,
        e?.senderPhoneNumber,
        e?.senderChooseDeparture,
        e?.senderChooseArrive,
        e?.senderChoosePack,
        e?.senderMail
      ]);

  @override
  bool isValidKey(Object? o) => o is SenderSendPackageRecord;
}
