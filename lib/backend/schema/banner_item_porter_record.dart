import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerItemPorterRecord extends FirestoreRecord {
  BannerItemPorterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bannerItemPorter');

  static Stream<BannerItemPorterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannerItemPorterRecord.fromSnapshot(s));

  static Future<BannerItemPorterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BannerItemPorterRecord.fromSnapshot(s));

  static BannerItemPorterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannerItemPorterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannerItemPorterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannerItemPorterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannerItemPorterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannerItemPorterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannerItemPorterRecordData({
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannerItemPorterRecordDocumentEquality
    implements Equality<BannerItemPorterRecord> {
  const BannerItemPorterRecordDocumentEquality();

  @override
  bool equals(BannerItemPorterRecord? e1, BannerItemPorterRecord? e2) {
    return e1?.url == e2?.url;
  }

  @override
  int hash(BannerItemPorterRecord? e) => const ListEquality().hash([e?.url]);

  @override
  bool isValidKey(Object? o) => o is BannerItemPorterRecord;
}
