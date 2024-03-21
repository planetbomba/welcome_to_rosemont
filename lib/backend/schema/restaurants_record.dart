import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantsRecord extends FirestoreRecord {
  RestaurantsRecord._(
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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "has_patio" field.
  bool? _hasPatio;
  bool get hasPatio => _hasPatio ?? false;
  bool hasHasPatio() => _hasPatio != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _address = snapshotData['address'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _phone = snapshotData['phone'] as String?;
    _website = snapshotData['website'] as String?;
    _image = snapshotData['image'] as String?;
    _hasPatio = snapshotData['has_patio'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantsRecord.fromSnapshot(s));

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantsRecord.fromSnapshot(s));

  static RestaurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantsRecordData({
  String? title,
  String? description,
  String? address,
  LatLng? location,
  String? phone,
  String? website,
  String? image,
  bool? hasPatio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'address': address,
      'location': location,
      'phone': phone,
      'website': website,
      'image': image,
      'has_patio': hasPatio,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantsRecordDocumentEquality implements Equality<RestaurantsRecord> {
  const RestaurantsRecordDocumentEquality();

  @override
  bool equals(RestaurantsRecord? e1, RestaurantsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.address == e2?.address &&
        e1?.location == e2?.location &&
        e1?.phone == e2?.phone &&
        e1?.website == e2?.website &&
        e1?.image == e2?.image &&
        e1?.hasPatio == e2?.hasPatio;
  }

  @override
  int hash(RestaurantsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.address,
        e?.location,
        e?.phone,
        e?.website,
        e?.image,
        e?.hasPatio
      ]);

  @override
  bool isValidKey(Object? o) => o is RestaurantsRecord;
}
