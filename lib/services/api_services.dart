import 'dart:convert';

import 'package:get_services/services/http.dart';
import 'package:get_services/services/urls.dart';
import 'package:get_services/shared_preferences.dart';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static final PreferencesService prefs = PreferencesService();
  static Future<Map<String, dynamic>> login(
      {required Map<String, dynamic> body}) async {
    try {
      Response response = await HttpServiceManager.post(
        endPoint: Url.login,
        body: body,
      );
      return jsonDecode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> viewAllProviders() async {
    final token = await prefs.getUserToken();
    try {
      Response response = await HttpServiceManager.get(
          endPoint: Url.viewAllProviders,
          headers: {
            'Authorization': 'Bearer $token',
          });

      return jsonDecode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> updateProvider(
      {required Map<String, dynamic> body, required String id}) async {
    final token = await prefs.getUserToken();
    try {
      Response response = await HttpServiceManager.patch(
          endPoint: "${Url.updateProvider}/$id",
          body: body,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          });

      return jsonDecode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> updateUser(
      {required Map<String, dynamic> body, required String id}) async {
    final token = await prefs.getUserToken();
    try {
      Response response = await HttpServiceManager.patch(
          endPoint: "${Url.updateUser}/$id",
          body: body,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          });

      return jsonDecode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> deleteProvider(
      {required String id}) async {
    final token = await prefs.getUserToken();
    try {
      Response response = await HttpServiceManager.delete(
          endPoint: "${Url.deleteProvider}/$id",
          headers: {
            'Authorization': 'Bearer $token',
          });

      return jsonDecode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  static Future<String> getFormattedAddress(
      double latitude, double longitude) async {
    final String apiKey = "AIzaSyDV7Cx2IxjnWIDuUXoNB6975LT5CnDbniY";
    try {
      final url =
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$apiKey';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['results'] != null && data['results'].isNotEmpty) {
          return data['results'][0]['formatted_address'];
        } else {
          return 'No address found for the given coordinates';
        }
      } else {
        throw Exception('Failed to fetch address: ${response.reasonPhrase}');
      }
    } catch (e) {
      return 'Error: $e';
    }
  }
}
