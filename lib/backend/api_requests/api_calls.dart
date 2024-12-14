import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CalculateDailyMacroTotalsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? date = '',
    String? pref = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'calculateDailyMacroTotals',
      apiUrl:
          'https://us-central1-powerplate-3aaec.cloudfunctions.net/calculateDailyMacroTotals',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
        'date': date,
        'pref': pref,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic basic(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static dynamic fats(dynamic response) => getJsonField(
        response,
        r'''$.fats''',
      );
  static dynamic carbs(dynamic response) => getJsonField(
        response,
        r'''$.carbs''',
      );
  static dynamic protein(dynamic response) => getJsonField(
        response,
        r'''$.protein''',
      );
  static dynamic calories(dynamic response) => getJsonField(
        response,
        r'''$.calories''',
      );
}

class ReturnGoalsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? pref = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'returnGoals',
      apiUrl:
          'https://us-central1-powerplate-3aaec.cloudfunctions.net/returnGoals',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? fats(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.fats''',
      ));
  static int? carbs(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.carbs''',
      ));
  static int? protein(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.protein''',
      ));
  static int? calories(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.calories''',
      ));
}

class GetRecipeCall {
  static Future<ApiCallResponse> call({
    int? protein,
    int? carbs,
    int? fat,
    int? calories,
    String? keyword = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "protein": $protein,
  "carbs": $carbs,
  "fat": $fat,
  "calories": $calories,
  "keyword": "${escapeStringForJson(keyword)}",
  "userId": "${escapeStringForJson(userId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getRecipe',
      apiUrl:
          'https://us-central1-powerplate-3aaec.cloudfunctions.net/getCustomRecipes',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUnsavedRecipesCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteUnsavedRecipes',
      apiUrl:
          'https://us-central1-powerplate-3aaec.cloudfunctions.net/deleteUnsavedRecipes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
