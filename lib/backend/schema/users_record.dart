import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "profile_is_full" field.
  bool? _profileIsFull;
  bool get profileIsFull => _profileIsFull ?? false;
  bool hasProfileIsFull() => _profileIsFull != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "fcm_token" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  bool hasFcmToken() => _fcmToken != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _email = snapshotData['email'] as String?;
    _profileIsFull = snapshotData['profile_is_full'] as bool?;
    _uid = snapshotData['uid'] as String?;
    _fcmToken = snapshotData['fcm_token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? name,
  String? image,
  String? email,
  bool? profileIsFull,
  String? uid,
  String? fcmToken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'name': name,
      'image': image,
      'email': email,
      'profile_is_full': profileIsFull,
      'uid': uid,
      'fcm_token': fcmToken,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.email == e2?.email &&
        e1?.profileIsFull == e2?.profileIsFull &&
        e1?.uid == e2?.uid &&
        e1?.fcmToken == e2?.fcmToken;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.name,
        e?.image,
        e?.email,
        e?.profileIsFull,
        e?.uid,
        e?.fcmToken
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
