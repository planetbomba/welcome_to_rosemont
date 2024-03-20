import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SliderItemsRecord extends FirestoreRecord {
  SliderItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "sort" field.
  int? _sort;
  int get sort => _sort ?? 0;
  bool hasSort() => _sort != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _sort = castToType<int>(snapshotData['sort']);
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('slider_items');

  static Stream<SliderItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SliderItemsRecord.fromSnapshot(s));

  static Future<SliderItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SliderItemsRecord.fromSnapshot(s));

  static SliderItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SliderItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SliderItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SliderItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SliderItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SliderItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSliderItemsRecordData({
  String? image,
  String? title,
  int? sort,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'title': title,
      'sort': sort,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class SliderItemsRecordDocumentEquality implements Equality<SliderItemsRecord> {
  const SliderItemsRecordDocumentEquality();

  @override
  bool equals(SliderItemsRecord? e1, SliderItemsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.sort == e2?.sort &&
        e1?.status == e2?.status;
  }

  @override
  int hash(SliderItemsRecord? e) =>
      const ListEquality().hash([e?.image, e?.title, e?.sort, e?.status]);

  @override
  bool isValidKey(Object? o) => o is SliderItemsRecord;
}
