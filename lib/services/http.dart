import 'dart:convert';
import 'dart:developer';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_services/services/urls.dart';
import 'package:http/http.dart' as http;

typedef CancelRequestCallBack = void Function(http.Client client);

class HttpServiceManager {
  static final http.Client _client = http.Client();
  static final FirebaseStorage _storage = FirebaseStorage.instance;

  static Future<Map<String, String>> get _headers async {
    return <String, String>{'Content-Type': 'application/json; charset=UTF-8'};
  }

  static Future<http.Response> post({
    required String endPoint,
    Object? body,
    Encoding? encoding,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    CancelRequestCallBack? cancelRequestCallBack,
  }) async {
    Uri uri = Uri.parse(Url.base + endPoint);
    log('API:: $uri');
    if (queryParameters != null) {
      uri = uri.replace(queryParameters: queryParameters);
    }
    cancelRequestCallBack?.call(_client);
    return _client.post(uri,
        body: jsonEncode(body),
        encoding: encoding,
        headers: headers ?? await _headers);
  }

  static Future<http.Response> get({
    required String endPoint,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    Uri uri = Uri.parse(Url.base + endPoint);
    log('API:: $uri');
    if (queryParameters != null) {
      uri = uri.replace(queryParameters: queryParameters);
    }
    return http.get(uri, headers: headers ?? await _headers);
  }

  static Future<String> uploadCategoryImage(dynamic imageBytes) async {
    try {
      String filePath =
          'getS/category_images/${DateTime.now().millisecondsSinceEpoch}_category.png';

      UploadTask uploadTask;

      uploadTask = _storage.ref(filePath).putData(imageBytes);

      // Wait for the upload to complete
      TaskSnapshot snapshot = await uploadTask;

      // Get the download URL after the upload is complete
      String downloadUrl = await snapshot.ref.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      print('${e.toString()}');
      throw 'Failed to upload category image: $e';
    }
  }

  static Future<http.Response> patch({
    required String endPoint,
    Object? body,
    Encoding? encoding,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    Uri uri = Uri.parse(Url.base + endPoint);
    log('API:: $uri');
    if (queryParameters != null) {
      uri = uri.replace(queryParameters: queryParameters);
    }
    return _client.patch(
      uri,
      body: jsonEncode(body),
      encoding: encoding,
      headers: headers ?? await _headers,
    );
  }

  static Future<http.Response> put({
    required String endPoint,
    Object? body,
    Encoding? encoding,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    Uri uri = Uri.parse(Url.base + endPoint);
    log('API:: $uri');
    if (queryParameters != null) {
      uri = uri.replace(queryParameters: queryParameters);
    }
    return _client.put(
      uri,
      body: jsonEncode(body),
      encoding: encoding,
      headers: headers ?? await _headers,
    );
  }

  static Future<http.Response> delete({
    required String endPoint,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
  }) async {
    Uri uri = Uri.parse(Url.base + endPoint);
    log('API:: $uri');
    if (queryParameters != null) {
      uri = uri.replace(queryParameters: queryParameters);
    }
    return _client.delete(
      uri,
      headers: headers ?? await _headers,
    );
  }
}
