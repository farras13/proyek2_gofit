import 'package:dio/dio.dart';
import 'package:gofits/api/config.dart';

class MuscleServices {
  static BaseOptions options = new BaseOptions(
    baseUrl: defaultBaseUrl,
  );

  static Dio dio = Dio(options);
  static Response response;

  static Future getListMuscle() async {
    try {
      response = await dio.get(
        "/workout/muscle",
      );
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("get list muscle error");
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

  static Future getDetailMuscle(String id) async {
    try {
      response = await dio.get(
        "/workout/detailMuscle?idMuscle=$id",
      );
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("get detail muscle error");
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
