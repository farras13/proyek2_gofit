import 'package:dio/dio.dart';

class FoodServices {
  static Dio dio = Dio();
  static Response response;

  static Future getFoodCalories(String much, String name) async {
    try {
      response = await dio.get(
          "https://api.edamam.com/api/nutrition-data?app_id=815eca36&app_key=b8bf6f75527afc44d8cecd1175bcb9d8&ingr=$much%20g%20$name");
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("get food calories Error");
        if (ex.response.statusCode == 404) {
          print("warning api");
        }
      } else if (ex.type == DioErrorType.DEFAULT) {
        print("error default");
        throw Exception(ex.error.message);
      } else {
        print("timeout");
        //timeout and canceled
      }
    }
  }
}
