import 'package:dio/dio.dart';
import 'package:gofits/api/config.dart';

class WorkoutServices {
  static BaseOptions options = new BaseOptions(
    baseUrl: defaultBaseUrl,
  );

  static Dio dio = Dio(options);
  static Response response;

  static Future getListWorkout() async {
    try {
      response = await dio.get(
        "/workout/listWorkout",
      );
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("get list Workout error");
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

  static Future getDetailWorkout(String id) async {
    try {
      response = await dio.get(
        "/workout/detail?idWorkout=$id",
      );
      return response;
    } on DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == DioErrorType.RESPONSE) {
        print("get detail food error");
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
