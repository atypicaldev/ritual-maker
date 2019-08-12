///
//  Generated code. Do not modify.
//  source: service/ritual_service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import '../models/ritual.pb.dart' as $1;

class ListRitualsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListRitualsRequest', package: const $pb.PackageName('ritual.service'))
    ..aOS(1, 'userId')
    ..aInt64(2, 'limit')
    ..aInt64(3, 'page')
    ..hasRequiredFields = false
  ;

  ListRitualsRequest._() : super();
  factory ListRitualsRequest() => create();
  factory ListRitualsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRitualsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListRitualsRequest clone() => ListRitualsRequest()..mergeFromMessage(this);
  ListRitualsRequest copyWith(void Function(ListRitualsRequest) updates) => super.copyWith((message) => updates(message as ListRitualsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRitualsRequest create() => ListRitualsRequest._();
  ListRitualsRequest createEmptyInstance() => create();
  static $pb.PbList<ListRitualsRequest> createRepeated() => $pb.PbList<ListRitualsRequest>();
  static ListRitualsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListRitualsRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  Int64 get limit => $_getI64(1);
  set limit(Int64 v) { $_setInt64(1, v); }
  $core.bool hasLimit() => $_has(1);
  void clearLimit() => clearField(2);

  Int64 get page => $_getI64(2);
  set page(Int64 v) { $_setInt64(2, v); }
  $core.bool hasPage() => $_has(2);
  void clearPage() => clearField(3);
}

class ListRitualsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListRitualsResponse', package: const $pb.PackageName('ritual.service'))
    ..pc<$1.Ritual>(1, 'rituals', $pb.PbFieldType.PM,$1.Ritual.create)
    ..hasRequiredFields = false
  ;

  ListRitualsResponse._() : super();
  factory ListRitualsResponse() => create();
  factory ListRitualsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRitualsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListRitualsResponse clone() => ListRitualsResponse()..mergeFromMessage(this);
  ListRitualsResponse copyWith(void Function(ListRitualsResponse) updates) => super.copyWith((message) => updates(message as ListRitualsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRitualsResponse create() => ListRitualsResponse._();
  ListRitualsResponse createEmptyInstance() => create();
  static $pb.PbList<ListRitualsResponse> createRepeated() => $pb.PbList<ListRitualsResponse>();
  static ListRitualsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListRitualsResponse _defaultInstance;

  $core.List<$1.Ritual> get rituals => $_getList(0);
}

class CreateRitualRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateRitualRequest', package: const $pb.PackageName('ritual.service'))
    ..aOS(1, 'title')
    ..aOS(2, 'userId')
    ..hasRequiredFields = false
  ;

  CreateRitualRequest._() : super();
  factory CreateRitualRequest() => create();
  factory CreateRitualRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRitualRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateRitualRequest clone() => CreateRitualRequest()..mergeFromMessage(this);
  CreateRitualRequest copyWith(void Function(CreateRitualRequest) updates) => super.copyWith((message) => updates(message as CreateRitualRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRitualRequest create() => CreateRitualRequest._();
  CreateRitualRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRitualRequest> createRepeated() => $pb.PbList<CreateRitualRequest>();
  static CreateRitualRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateRitualRequest _defaultInstance;

  $core.String get title => $_getS(0, '');
  set title($core.String v) { $_setString(0, v); }
  $core.bool hasTitle() => $_has(0);
  void clearTitle() => clearField(1);

  $core.String get userId => $_getS(1, '');
  set userId($core.String v) { $_setString(1, v); }
  $core.bool hasUserId() => $_has(1);
  void clearUserId() => clearField(2);
}

class CreateRitualResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateRitualResponse', package: const $pb.PackageName('ritual.service'))
    ..a<$1.Ritual>(1, 'ritual', $pb.PbFieldType.OM, $1.Ritual.getDefault, $1.Ritual.create)
    ..hasRequiredFields = false
  ;

  CreateRitualResponse._() : super();
  factory CreateRitualResponse() => create();
  factory CreateRitualResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRitualResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateRitualResponse clone() => CreateRitualResponse()..mergeFromMessage(this);
  CreateRitualResponse copyWith(void Function(CreateRitualResponse) updates) => super.copyWith((message) => updates(message as CreateRitualResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRitualResponse create() => CreateRitualResponse._();
  CreateRitualResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRitualResponse> createRepeated() => $pb.PbList<CreateRitualResponse>();
  static CreateRitualResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateRitualResponse _defaultInstance;

  $1.Ritual get ritual => $_getN(0);
  set ritual($1.Ritual v) { setField(1, v); }
  $core.bool hasRitual() => $_has(0);
  void clearRitual() => clearField(1);
}

class UpdateRitualRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateRitualRequest', package: const $pb.PackageName('ritual.service'))
    ..a<$1.Ritual>(1, 'ritual', $pb.PbFieldType.OM, $1.Ritual.getDefault, $1.Ritual.create)
    ..hasRequiredFields = false
  ;

  UpdateRitualRequest._() : super();
  factory UpdateRitualRequest() => create();
  factory UpdateRitualRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRitualRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateRitualRequest clone() => UpdateRitualRequest()..mergeFromMessage(this);
  UpdateRitualRequest copyWith(void Function(UpdateRitualRequest) updates) => super.copyWith((message) => updates(message as UpdateRitualRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRitualRequest create() => UpdateRitualRequest._();
  UpdateRitualRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRitualRequest> createRepeated() => $pb.PbList<UpdateRitualRequest>();
  static UpdateRitualRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateRitualRequest _defaultInstance;

  $1.Ritual get ritual => $_getN(0);
  set ritual($1.Ritual v) { setField(1, v); }
  $core.bool hasRitual() => $_has(0);
  void clearRitual() => clearField(1);
}

class UpdateRitualResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateRitualResponse', package: const $pb.PackageName('ritual.service'))
    ..a<$1.Ritual>(1, 'ritual', $pb.PbFieldType.OM, $1.Ritual.getDefault, $1.Ritual.create)
    ..hasRequiredFields = false
  ;

  UpdateRitualResponse._() : super();
  factory UpdateRitualResponse() => create();
  factory UpdateRitualResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRitualResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateRitualResponse clone() => UpdateRitualResponse()..mergeFromMessage(this);
  UpdateRitualResponse copyWith(void Function(UpdateRitualResponse) updates) => super.copyWith((message) => updates(message as UpdateRitualResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRitualResponse create() => UpdateRitualResponse._();
  UpdateRitualResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRitualResponse> createRepeated() => $pb.PbList<UpdateRitualResponse>();
  static UpdateRitualResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateRitualResponse _defaultInstance;

  $1.Ritual get ritual => $_getN(0);
  set ritual($1.Ritual v) { setField(1, v); }
  $core.bool hasRitual() => $_has(0);
  void clearRitual() => clearField(1);
}

class RitualSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RitualSubscriptionRequest', package: const $pb.PackageName('ritual.service'))
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  RitualSubscriptionRequest._() : super();
  factory RitualSubscriptionRequest() => create();
  factory RitualSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RitualSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RitualSubscriptionRequest clone() => RitualSubscriptionRequest()..mergeFromMessage(this);
  RitualSubscriptionRequest copyWith(void Function(RitualSubscriptionRequest) updates) => super.copyWith((message) => updates(message as RitualSubscriptionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RitualSubscriptionRequest create() => RitualSubscriptionRequest._();
  RitualSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<RitualSubscriptionRequest> createRepeated() => $pb.PbList<RitualSubscriptionRequest>();
  static RitualSubscriptionRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RitualSubscriptionRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);
}

class RitualSubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RitualSubscriptionResponse', package: const $pb.PackageName('ritual.service'))
    ..hasRequiredFields = false
  ;

  RitualSubscriptionResponse._() : super();
  factory RitualSubscriptionResponse() => create();
  factory RitualSubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RitualSubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RitualSubscriptionResponse clone() => RitualSubscriptionResponse()..mergeFromMessage(this);
  RitualSubscriptionResponse copyWith(void Function(RitualSubscriptionResponse) updates) => super.copyWith((message) => updates(message as RitualSubscriptionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RitualSubscriptionResponse create() => RitualSubscriptionResponse._();
  RitualSubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<RitualSubscriptionResponse> createRepeated() => $pb.PbList<RitualSubscriptionResponse>();
  static RitualSubscriptionResponse getDefault() => _defaultInstance ??= create()..freeze();
  static RitualSubscriptionResponse _defaultInstance;
}

class RitualUnsubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RitualUnsubscriptionRequest', package: const $pb.PackageName('ritual.service'))
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  RitualUnsubscriptionRequest._() : super();
  factory RitualUnsubscriptionRequest() => create();
  factory RitualUnsubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RitualUnsubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RitualUnsubscriptionRequest clone() => RitualUnsubscriptionRequest()..mergeFromMessage(this);
  RitualUnsubscriptionRequest copyWith(void Function(RitualUnsubscriptionRequest) updates) => super.copyWith((message) => updates(message as RitualUnsubscriptionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RitualUnsubscriptionRequest create() => RitualUnsubscriptionRequest._();
  RitualUnsubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<RitualUnsubscriptionRequest> createRepeated() => $pb.PbList<RitualUnsubscriptionRequest>();
  static RitualUnsubscriptionRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RitualUnsubscriptionRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);
}

class RitualUnsubscriptionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RitualUnsubscriptionResponse', package: const $pb.PackageName('ritual.service'))
    ..hasRequiredFields = false
  ;

  RitualUnsubscriptionResponse._() : super();
  factory RitualUnsubscriptionResponse() => create();
  factory RitualUnsubscriptionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RitualUnsubscriptionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RitualUnsubscriptionResponse clone() => RitualUnsubscriptionResponse()..mergeFromMessage(this);
  RitualUnsubscriptionResponse copyWith(void Function(RitualUnsubscriptionResponse) updates) => super.copyWith((message) => updates(message as RitualUnsubscriptionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RitualUnsubscriptionResponse create() => RitualUnsubscriptionResponse._();
  RitualUnsubscriptionResponse createEmptyInstance() => create();
  static $pb.PbList<RitualUnsubscriptionResponse> createRepeated() => $pb.PbList<RitualUnsubscriptionResponse>();
  static RitualUnsubscriptionResponse getDefault() => _defaultInstance ??= create()..freeze();
  static RitualUnsubscriptionResponse _defaultInstance;
}

