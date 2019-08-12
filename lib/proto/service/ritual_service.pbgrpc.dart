///
//  Generated code. Do not modify.
//  source: service/ritual_service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core show int, String, List;

import 'package:grpc/service_api.dart' as $grpc;
import 'ritual_service.pb.dart' as $0;
export 'ritual_service.pb.dart';

class RitualServiceClient extends $grpc.Client {
  static final _$listRituals =
      $grpc.ClientMethod<$0.ListRitualsRequest, $0.ListRitualsResponse>(
          '/ritual.service.RitualService/ListRituals',
          ($0.ListRitualsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListRitualsResponse.fromBuffer(value));
  static final _$createRitual =
      $grpc.ClientMethod<$0.CreateRitualRequest, $0.CreateRitualResponse>(
          '/ritual.service.RitualService/CreateRitual',
          ($0.CreateRitualRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateRitualResponse.fromBuffer(value));
  static final _$updateRitual =
      $grpc.ClientMethod<$0.UpdateRitualRequest, $0.UpdateRitualResponse>(
          '/ritual.service.RitualService/UpdateRitual',
          ($0.UpdateRitualRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateRitualResponse.fromBuffer(value));
  static final _$subscribeToRitual = $grpc.ClientMethod<
          $0.RitualSubscriptionRequest, $0.RitualSubscriptionResponse>(
      '/ritual.service.RitualService/SubscribeToRitual',
      ($0.RitualSubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RitualSubscriptionResponse.fromBuffer(value));
  static final _$unSubscribeToRitual = $grpc.ClientMethod<
          $0.RitualUnsubscriptionRequest, $0.RitualUnsubscriptionResponse>(
      '/ritual.service.RitualService/UnSubscribeToRitual',
      ($0.RitualUnsubscriptionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RitualUnsubscriptionResponse.fromBuffer(value));

  RitualServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.ListRitualsResponse> listRituals(
      $async.Stream<$0.ListRitualsRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$listRituals, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$0.CreateRitualResponse> createRitual(
      $0.CreateRitualRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createRitual, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.UpdateRitualResponse> updateRitual(
      $0.UpdateRitualRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateRitual, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RitualSubscriptionResponse> subscribeToRitual(
      $0.RitualSubscriptionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeToRitual, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RitualUnsubscriptionResponse> unSubscribeToRitual(
      $0.RitualUnsubscriptionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$unSubscribeToRitual, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class RitualServiceBase extends $grpc.Service {
  $core.String get $name => 'ritual.service.RitualService';

  RitualServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListRitualsRequest, $0.ListRitualsResponse>(
            'ListRituals',
            listRituals,
            true,
            true,
            ($core.List<$core.int> value) =>
                $0.ListRitualsRequest.fromBuffer(value),
            ($0.ListRitualsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateRitualRequest, $0.CreateRitualResponse>(
            'CreateRitual',
            createRitual_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.CreateRitualRequest.fromBuffer(value),
            ($0.CreateRitualResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateRitualRequest, $0.UpdateRitualResponse>(
            'UpdateRitual',
            updateRitual_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateRitualRequest.fromBuffer(value),
            ($0.UpdateRitualResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RitualSubscriptionRequest,
            $0.RitualSubscriptionResponse>(
        'SubscribeToRitual',
        subscribeToRitual_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RitualSubscriptionRequest.fromBuffer(value),
        ($0.RitualSubscriptionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RitualUnsubscriptionRequest,
            $0.RitualUnsubscriptionResponse>(
        'UnSubscribeToRitual',
        unSubscribeToRitual_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RitualUnsubscriptionRequest.fromBuffer(value),
        ($0.RitualUnsubscriptionResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.CreateRitualResponse> createRitual_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateRitualRequest> request) async* {
    yield* createRitual(call, await request);
  }

  $async.Future<$0.UpdateRitualResponse> updateRitual_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateRitualRequest> request) async {
    return updateRitual(call, await request);
  }

  $async.Future<$0.RitualSubscriptionResponse> subscribeToRitual_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RitualSubscriptionRequest> request) async {
    return subscribeToRitual(call, await request);
  }

  $async.Future<$0.RitualUnsubscriptionResponse> unSubscribeToRitual_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RitualUnsubscriptionRequest> request) async {
    return unSubscribeToRitual(call, await request);
  }

  $async.Stream<$0.ListRitualsResponse> listRituals(
      $grpc.ServiceCall call, $async.Stream<$0.ListRitualsRequest> request);
  $async.Stream<$0.CreateRitualResponse> createRitual(
      $grpc.ServiceCall call, $0.CreateRitualRequest request);
  $async.Future<$0.UpdateRitualResponse> updateRitual(
      $grpc.ServiceCall call, $0.UpdateRitualRequest request);
  $async.Future<$0.RitualSubscriptionResponse> subscribeToRitual(
      $grpc.ServiceCall call, $0.RitualSubscriptionRequest request);
  $async.Future<$0.RitualUnsubscriptionResponse> unSubscribeToRitual(
      $grpc.ServiceCall call, $0.RitualUnsubscriptionRequest request);
}
