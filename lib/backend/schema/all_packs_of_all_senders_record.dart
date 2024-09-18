import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllPacksOfAllSendersRecord extends FirestoreRecord {
  AllPacksOfAllSendersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  // "sender_send_create_time" field.
  DateTime? _senderSendCreateTime;
  DateTime? get senderSendCreateTime => _senderSendCreateTime;
  bool hasSenderSendCreateTime() => _senderSendCreateTime != null;

  // "sender_phone_number" field.
  String? _senderPhoneNumber;
  String get senderPhoneNumber => _senderPhoneNumber ?? '';
  bool hasSenderPhoneNumber() => _senderPhoneNumber != null;

  // "mailFromAllPacks" field.
  String? _mailFromAllPacks;
  String get mailFromAllPacks => _mailFromAllPacks ?? '';
  bool hasMailFromAllPacks() => _mailFromAllPacks != null;

  void _initializeFields() {
    _senderChooseDeparture = snapshotData['SenderChooseDeparture'] as String?;
    _senderChooseArrive = snapshotData['SenderChooseArrive'] as String?;
    _senderChoosePack = snapshotData['SenderChoosePack'] as String?;
    _senderSendCreateTime =
        snapshotData['sender_send_create_time'] as DateTime?;
    _senderPhoneNumber = snapshotData['sender_phone_number'] as String?;
    _mailFromAllPacks = snapshotData['mailFromAllPacks'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AllPacksOfAllSenders');

  static Stream<AllPacksOfAllSendersRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => AllPacksOfAllSendersRecord.fromSnapshot(s));

  static Future<AllPacksOfAllSendersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AllPacksOfAllSendersRecord.fromSnapshot(s));

  static AllPacksOfAllSendersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllPacksOfAllSendersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllPacksOfAllSendersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllPacksOfAllSendersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllPacksOfAllSendersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllPacksOfAllSendersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllPacksOfAllSendersRecordData({
  String? senderChooseDeparture,
  String? senderChooseArrive,
  String? senderChoosePack,
  DateTime? senderSendCreateTime,
  String? senderPhoneNumber,
  String? mailFromAllPacks,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SenderChooseDeparture': senderChooseDeparture,
      'SenderChooseArrive': senderChooseArrive,
      'SenderChoosePack': senderChoosePack,
      'sender_send_create_time': senderSendCreateTime,
      'sender_phone_number': senderPhoneNumber,
      'mailFromAllPacks': mailFromAllPacks,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllPacksOfAllSendersRecordDocumentEquality
    implements Equality<AllPacksOfAllSendersRecord> {
  const AllPacksOfAllSendersRecordDocumentEquality();

  @override
  bool equals(AllPacksOfAllSendersRecord? e1, AllPacksOfAllSendersRecord? e2) {
    return e1?.senderChooseDeparture == e2?.senderChooseDeparture &&
        e1?.senderChooseArrive == e2?.senderChooseArrive &&
        e1?.senderChoosePack == e2?.senderChoosePack &&
        e1?.senderSendCreateTime == e2?.senderSendCreateTime &&
        e1?.senderPhoneNumber == e2?.senderPhoneNumber &&
        e1?.mailFromAllPacks == e2?.mailFromAllPacks;
  }

  @override
  int hash(AllPacksOfAllSendersRecord? e) => const ListEquality().hash([
        e?.senderChooseDeparture,
        e?.senderChooseArrive,
        e?.senderChoosePack,
        e?.senderSendCreateTime,
        e?.senderPhoneNumber,
        e?.mailFromAllPacks
      ]);

  @override
  bool isValidKey(Object? o) => o is AllPacksOfAllSendersRecord;
}
