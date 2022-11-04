// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersDetailsRecord> _$usersDetailsRecordSerializer =
    new _$UsersDetailsRecordSerializer();

class _$UsersDetailsRecordSerializer
    implements StructuredSerializer<UsersDetailsRecord> {
  @override
  final Iterable<Type> types = const [UsersDetailsRecord, _$UsersDetailsRecord];
  @override
  final String wireName = 'UsersDetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsersDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.college;
    if (value != null) {
      result
        ..add('college')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.study;
    if (value != null) {
      result
        ..add('study')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'college':
          result.college = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'study':
          result.study = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersDetailsRecord extends UsersDetailsRecord {
  @override
  final String? email;
  @override
  final String? location;
  @override
  final String? college;
  @override
  final String? gender;
  @override
  final String? name;
  @override
  final String? study;
  @override
  final String? phone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersDetailsRecord(
          [void Function(UsersDetailsRecordBuilder)? updates]) =>
      (new UsersDetailsRecordBuilder()..update(updates))._build();

  _$UsersDetailsRecord._(
      {this.email,
      this.location,
      this.college,
      this.gender,
      this.name,
      this.study,
      this.phone,
      this.ffRef})
      : super._();

  @override
  UsersDetailsRecord rebuild(
          void Function(UsersDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersDetailsRecordBuilder toBuilder() =>
      new UsersDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersDetailsRecord &&
        email == other.email &&
        location == other.location &&
        college == other.college &&
        gender == other.gender &&
        name == other.name &&
        study == other.study &&
        phone == other.phone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, email.hashCode), location.hashCode),
                            college.hashCode),
                        gender.hashCode),
                    name.hashCode),
                study.hashCode),
            phone.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersDetailsRecord')
          ..add('email', email)
          ..add('location', location)
          ..add('college', college)
          ..add('gender', gender)
          ..add('name', name)
          ..add('study', study)
          ..add('phone', phone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersDetailsRecordBuilder
    implements Builder<UsersDetailsRecord, UsersDetailsRecordBuilder> {
  _$UsersDetailsRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _college;
  String? get college => _$this._college;
  set college(String? college) => _$this._college = college;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _study;
  String? get study => _$this._study;
  set study(String? study) => _$this._study = study;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersDetailsRecordBuilder() {
    UsersDetailsRecord._initializeBuilder(this);
  }

  UsersDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _location = $v.location;
      _college = $v.college;
      _gender = $v.gender;
      _name = $v.name;
      _study = $v.study;
      _phone = $v.phone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersDetailsRecord;
  }

  @override
  void update(void Function(UsersDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersDetailsRecord build() => _build();

  _$UsersDetailsRecord _build() {
    final _$result = _$v ??
        new _$UsersDetailsRecord._(
            email: email,
            location: location,
            college: college,
            gender: gender,
            name: name,
            study: study,
            phone: phone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
