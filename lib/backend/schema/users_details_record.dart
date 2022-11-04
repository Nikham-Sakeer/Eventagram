import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_details_record.g.dart';

abstract class UsersDetailsRecord
    implements Built<UsersDetailsRecord, UsersDetailsRecordBuilder> {
  static Serializer<UsersDetailsRecord> get serializer =>
      _$usersDetailsRecordSerializer;

  String? get email;

  String? get location;

  String? get college;

  String? get gender;

  String? get name;

  String? get study;

  String? get phone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersDetailsRecordBuilder builder) => builder
    ..email = ''
    ..location = ''
    ..college = ''
    ..gender = ''
    ..name = ''
    ..study = ''
    ..phone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UsersDetails');

  static Stream<UsersDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersDetailsRecord._();
  factory UsersDetailsRecord(
          [void Function(UsersDetailsRecordBuilder) updates]) =
      _$UsersDetailsRecord;

  static UsersDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersDetailsRecordData({
  String? email,
  String? location,
  String? college,
  String? gender,
  String? name,
  String? study,
  String? phone,
}) {
  final firestoreData = serializers.toFirestore(
    UsersDetailsRecord.serializer,
    UsersDetailsRecord(
      (u) => u
        ..email = email
        ..location = location
        ..college = college
        ..gender = gender
        ..name = name
        ..study = study
        ..phone = phone,
    ),
  );

  return firestoreData;
}
