import 'package:dio/dio.dart';

String baseUrl = 'https://osded.cloud.invgate.net/api/v1';

class RequesApi {
  final String route;
  RequesApi({required this.route});

  Future<Response> get() async {
    String url = baseUrl + route;
    Options options = Options(headers: {
      'Authorization':
          'Basic c29wb3J0ZXVzdWFyaW9zOkZFdWhSc2lPQThpU2doNWhXODVOQ3RYYw==',
      'Cookie': 'PHPSESSID=fd29affdc28a8e89c49919b51db1a50d'
    });

    return await Dio().get(url, options: options);
  }
}
