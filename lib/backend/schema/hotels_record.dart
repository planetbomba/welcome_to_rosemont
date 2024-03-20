import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelsRecord extends FirestoreRecord {
  HotelsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _address = snapshotData['address'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _phone = snapshotData['phone'] as String?;
    _website = snapshotData['website'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hotels');

  static Stream<HotelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelsRecord.fromSnapshot(s));

  static Future<HotelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelsRecord.fromSnapshot(s));

  static HotelsRecord fromSnapshot(DocumentSnapshot snapshot) => HotelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelsRecordData({
  String? title,
  String? description,
  String? image,
  String? address,
  LatLng? location,
  String? phone,
  String? website,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'image': image,
      'address': address,
      'location': location,
      'phone': phone,
      'website': website,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelsRecordDocumentEquality implements Equality<HotelsRecord> {
  const HotelsRecordDocumentEquality();

  @override
  bool equals(HotelsRecord? e1, HotelsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.address == e2?.address &&
        e1?.location == e2?.location &&
        e1?.phone == e2?.phone &&
        e1?.website == e2?.website;
  }

  @override
  int hash(HotelsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.image,
        e?.address,
        e?.location,
        e?.phone,
        e?.website
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelsRecord;
}
