import 'package:boulder/futureprovider/services/suggestions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  Future<Suggestions> getSuggestions() async {
    try {
      final response = await Dio().get('https://www.boredapi.com/api/activity');
      return Suggestions.fromJson(response.data);
    } on Exception catch (error) {
      throw Exception(error);
    }
  }
}
