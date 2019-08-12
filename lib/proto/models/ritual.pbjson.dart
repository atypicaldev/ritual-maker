///
//  Generated code. Do not modify.
//  source: models/ritual.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Ritual$json = const {
  '1': 'Ritual',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'steps', '3': 4, '4': 3, '5': 11, '6': '.ritual.models.RitualStep', '10': 'steps'},
  ],
};

const RitualStep$json = const {
  '1': 'RitualStep',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'completed', '3': 2, '4': 1, '5': 8, '10': 'completed'},
    const {'1': 'estimated_minutes', '3': 3, '4': 1, '5': 3, '10': 'estimatedMinutes'},
  ],
};

