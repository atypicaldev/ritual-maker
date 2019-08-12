///
//  Generated code. Do not modify.
//  source: service/ritual_service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ListRitualsRequest$json = const {
  '1': 'ListRitualsRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'page', '3': 3, '4': 1, '5': 3, '10': 'page'},
  ],
};

const ListRitualsResponse$json = const {
  '1': 'ListRitualsResponse',
  '2': const [
    const {'1': 'rituals', '3': 1, '4': 3, '5': 11, '6': '.ritual.models.Ritual', '10': 'rituals'},
  ],
};

const CreateRitualRequest$json = const {
  '1': 'CreateRitualRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const CreateRitualResponse$json = const {
  '1': 'CreateRitualResponse',
  '2': const [
    const {'1': 'ritual', '3': 1, '4': 1, '5': 11, '6': '.ritual.models.Ritual', '10': 'ritual'},
  ],
};

const UpdateRitualRequest$json = const {
  '1': 'UpdateRitualRequest',
  '2': const [
    const {'1': 'ritual', '3': 1, '4': 1, '5': 11, '6': '.ritual.models.Ritual', '10': 'ritual'},
  ],
};

const UpdateRitualResponse$json = const {
  '1': 'UpdateRitualResponse',
  '2': const [
    const {'1': 'ritual', '3': 1, '4': 1, '5': 11, '6': '.ritual.models.Ritual', '10': 'ritual'},
  ],
};

const RitualSubscriptionRequest$json = const {
  '1': 'RitualSubscriptionRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const RitualSubscriptionResponse$json = const {
  '1': 'RitualSubscriptionResponse',
};

const RitualUnsubscriptionRequest$json = const {
  '1': 'RitualUnsubscriptionRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const RitualUnsubscriptionResponse$json = const {
  '1': 'RitualUnsubscriptionResponse',
};

