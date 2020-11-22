import 'package:dio/dio.dart';
import 'package:gofits/api/config.dart';

class UserServices {
  static BaseOptions options = new BaseOptions(
    baseUrl: defaultBaseUrl,
  );

  static Dio dio = Dio(options);
  static Response response;

  static Future login(String username, String password) async {
    try {
      FormData formData = FormData.fromMap({
        "username": username,
        "password": password,
      });
      response = await dio.post("/auth/login", data: formData);
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("login error");
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

  static Future register(
    String name,
    String username,
    String password,
    String gender,
    String tall,
    String weight,
    String age,
  ) async {
    try {
      FormData formData = FormData.fromMap({
        "name": name,
        "username": username,
        "password": password,
        "date": "2000-05-12",
        "gender": gender,
        "tinggi": tall,
        "berat": weight,
        "umur": age,
      });
      response = await dio.post("/auth/register", data: formData);
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("login error");
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
