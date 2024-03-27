import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Rosemont Api Group Code

class RosemontApiGroup {
  static String baseUrl = 'https://api.rosemont.com';
  static Map<String, String> headers = {};
  static GetPageCall getPageCall = GetPageCall();
  static BadgeDealsCall badgeDealsCall = BadgeDealsCall();
}

class GetPageCall {
  Future<ApiCallResponse> call({
    String? slug = '[slug]',
    String? value = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get page',
      apiUrl: '${RosemontApiGroup.baseUrl}/items/pages/?filter${slug}=${value}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'value': "des-about",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BadgeDealsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Badge Deals',
      apiUrl: '${RosemontApiGroup.baseUrl}/items/rc_badge_deals',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? deal(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

/// End Rosemont Api Group Code

class ThingsToDoEventsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Things to Do Events',
      apiUrl: 'https://rosemont.com/wp-json/rsmt/v1/events',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EventDetailCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Event Detail',
      apiUrl: 'https://rosemont.com/wp-json/rsmt/v1/events/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
