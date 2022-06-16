import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  @nullable
  String get heading;

  @nullable
  String get body;

  @nullable
  String get photo;

  @nullable
  String get video;

  @nullable
  @BuiltValueField(wireName: 'post_type')
  int get postType;

  @nullable
  @BuiltValueField(wireName: 'time_stamp')
  DateTime get timeStamp;

  @nullable
  DocumentReference get uid;

  @nullable
  String get pid;

  @nullable
  @BuiltValueField(wireName: 'users_liked')
  BuiltList<String> get usersLiked;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..heading = ''
    ..body = ''
    ..photo = ''
    ..video = ''
    ..postType = 0
    ..pid = ''
    ..usersLiked = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostsRecordData({
  String heading,
  String body,
  String photo,
  String video,
  int postType,
  DateTime timeStamp,
  DocumentReference uid,
  String pid,
}) =>
    serializers.toFirestore(
        PostsRecord.serializer,
        PostsRecord((p) => p
          ..heading = heading
          ..body = body
          ..photo = photo
          ..video = video
          ..postType = postType
          ..timeStamp = timeStamp
          ..uid = uid
          ..pid = pid
          ..usersLiked = null));
