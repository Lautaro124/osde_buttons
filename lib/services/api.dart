import 'package:dio/dio.dart';

import '../assets/enums/urls.dart';

class RequesApi {
  final String route;
  RequesApi({required this.route});

  String _url() => Url.base.value + route;

  Future<Response> get() async {
    Options options = Options(headers: {
      'Authorization':
          'Basic c29wb3J0ZXVzdWFyaW9zOkZFdWhSc2lPQThpU2doNWhXODVOQ3RYYw==',
      'Cookie': 'PHPSESSID=fd29affdc28a8e89c49919b51db1a50d'
    });

    return await Dio().get(_url(), options: options);
  }
}
