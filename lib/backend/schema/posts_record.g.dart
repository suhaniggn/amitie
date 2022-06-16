// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.heading;
    if (value != null) {
      result
        ..add('heading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('post_type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timeStamp;
    if (value != null) {
      result
        ..add('time_stamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.pid;
    if (value != null) {
      result
        ..add('pid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usersLiked;
    if (value != null) {
      result
        ..add('users_liked')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PostsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'heading':
          result.heading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_type':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time_stamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'pid':
          result.pid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'users_liked':
          result.usersLiked.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PostsRecord extends PostsRecord {
  @override
  final String heading;
  @override
  final String body;
  @override
  final String photo;
  @override
  final String video;
  @override
  final int postType;
  @override
  final DateTime timeStamp;
  @override
  final DocumentReference<Object> uid;
  @override
  final String pid;
  @override
  final BuiltList<String> usersLiked;
  @override
  final DocumentReference<Object> reference;

  factory _$PostsRecord([void Function(PostsRecordBuilder) updates]) =>
      (new PostsRecordBuilder()..update(updates)).build();

  _$PostsRecord._(
      {this.heading,
      this.body,
      this.photo,
      this.video,
      this.postType,
      this.timeStamp,
      this.uid,
      this.pid,
      this.usersLiked,
      this.reference})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        heading == other.heading &&
        body == other.body &&
        photo == other.photo &&
        video == other.video &&
        postType == other.postType &&
        timeStamp == other.timeStamp &&
        uid == other.uid &&
        pid == other.pid &&
        usersLiked == other.usersLiked &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, heading.hashCode),
                                        body.hashCode),
                                    photo.hashCode),
                                video.hashCode),
                            postType.hashCode),
                        timeStamp.hashCode),
                    uid.hashCode),
                pid.hashCode),
            usersLiked.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsRecord')
          ..add('heading', heading)
          ..add('body', body)
          ..add('photo', photo)
          ..add('video', video)
          ..add('postType', postType)
          ..add('timeStamp', timeStamp)
          ..add('uid', uid)
          ..add('pid', pid)
          ..add('usersLiked', usersLiked)
          ..add('reference', reference))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord _$v;

  String _heading;
  String get heading => _$this._heading;
  set heading(String heading) => _$this._heading = heading;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  int _postType;
  int get postType => _$this._postType;
  set postType(int postType) => _$this._postType = postType;

  DateTime _timeStamp;
  DateTime get timeStamp => _$this._timeStamp;
  set timeStamp(DateTime timeStamp) => _$this._timeStamp = timeStamp;

  DocumentReference<Object> _uid;
  DocumentReference<Object> get uid => _$this._uid;
  set uid(DocumentReference<Object> uid) => _$this._uid = uid;

  String _pid;
  String get pid => _$this._pid;
  set pid(String pid) => _$this._pid = pid;

  ListBuilder<String> _usersLiked;
  ListBuilder<String> get usersLiked =>
      _$this._usersLiked ??= new ListBuilder<String>();
  set usersLiked(ListBuilder<String> usersLiked) =>
      _$this._usersLiked = usersLiked;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heading = $v.heading;
      _body = $v.body;
      _photo = $v.photo;
      _video = $v.video;
      _postType = $v.postType;
      _timeStamp = $v.timeStamp;
      _uid = $v.uid;
      _pid = $v.pid;
      _usersLiked = $v.usersLiked?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsRecord build() {
    _$PostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PostsRecord._(
              heading: heading,
              body: body,
              photo: photo,
              video: video,
              postType: postType,
              timeStamp: timeStamp,
              uid: uid,
              pid: pid,
              usersLiked: _usersLiked?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'usersLiked';
        _usersLiked?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
