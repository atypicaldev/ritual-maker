///
//  Generated code. Do not modify.
//  source: models/ritual.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Ritual extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Ritual', package: const $pb.PackageName('ritual.models'))
    ..aOS(1, 'id')
    ..aOS(2, 'userId')
    ..aOS(3, 'title')
    ..pc<RitualStep>(4, 'steps', $pb.PbFieldType.PM,RitualStep.create)
    ..hasRequiredFields = false
  ;

  Ritual._() : super();
  factory Ritual() => create();
  factory Ritual.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ritual.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Ritual clone() => Ritual()..mergeFromMessage(this);
  Ritual copyWith(void Function(Ritual) updates) => super.copyWith((message) => updates(message as Ritual));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ritual create() => Ritual._();
  Ritual createEmptyInstance() => create();
  static $pb.PbList<Ritual> createRepeated() => $pb.PbList<Ritual>();
  static Ritual getDefault() => _defaultInstance ??= create()..freeze();
  static Ritual _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get userId => $_getS(1, '');
  set userId($core.String v) { $_setString(1, v); }
  $core.bool hasUserId() => $_has(1);
  void clearUserId() => clearField(2);

  $core.String get title => $_getS(2, '');
  set title($core.String v) { $_setString(2, v); }
  $core.bool hasTitle() => $_has(2);
  void clearTitle() => clearField(3);

  $core.List<RitualStep> get steps => $_getList(3);
}

class RitualStep extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RitualStep', package: const $pb.PackageName('ritual.models'))
    ..aOS(1, 'description')
    ..aOB(2, 'completed')
    ..aInt64(3, 'estimatedMinutes')
    ..hasRequiredFields = false
  ;

  RitualStep._() : super();
  factory RitualStep() => create();
  factory RitualStep.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RitualStep.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RitualStep clone() => RitualStep()..mergeFromMessage(this);
  RitualStep copyWith(void Function(RitualStep) updates) => super.copyWith((message) => updates(message as RitualStep));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RitualStep create() => RitualStep._();
  RitualStep createEmptyInstance() => create();
  static $pb.PbList<RitualStep> createRepeated() => $pb.PbList<RitualStep>();
  static RitualStep getDefault() => _defaultInstance ??= create()..freeze();
  static RitualStep _defaultInstance;

  $core.String get description => $_getS(0, '');
  set description($core.String v) { $_setString(0, v); }
  $core.bool hasDescription() => $_has(0);
  void clearDescription() => clearField(1);

  $core.bool get completed => $_get(1, false);
  set completed($core.bool v) { $_setBool(1, v); }
  $core.bool hasCompleted() => $_has(1);
  void clearCompleted() => clearField(2);

  Int64 get estimatedMinutes => $_getI64(2);
  set estimatedMinutes(Int64 v) { $_setInt64(2, v); }
  $core.bool hasEstimatedMinutes() => $_has(2);
  void clearEstimatedMinutes() => clearField(3);
}

