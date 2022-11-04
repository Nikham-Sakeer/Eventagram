import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @BuiltValueField(wireName: 'Event_name')
  String? get eventName;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Date')
  String? get date;

  @BuiltValueField(wireName: 'Organization')
  String? get organization;

  @BuiltValueField(wireName: 'Event_type')
  String? get eventType;

  @BuiltValueField(wireName: 'Location')
  String? get location;

  @BuiltValueField(wireName: 'Branch')
  String? get branch;

  @BuiltValueField(wireName: 'Register_Link')
  String? get registerLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..eventName = ''
    ..description = ''
    ..date = ''
    ..organization = ''
    ..eventType = ''
    ..location = ''
    ..branch = ''
    ..registerLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  String? description,
  String? date,
  String? organization,
  String? eventType,
  String? location,
  String? branch,
  String? registerLink,
}) {
  final firestoreData = serializers.toFirestore(
    EventsRecord.serializer,
    EventsRecord(
      (e) => e
        ..eventName = eventName
        ..description = description
        ..date = date
        ..organization = organization
        ..eventType = eventType
        ..location = location
        ..branch = branch
        ..registerLink = registerLink,
    ),
  );

  return firestoreData;
}
