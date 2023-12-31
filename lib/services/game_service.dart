import 'package:dio/dio.dart';
import 'package:game_mentor/domain/models/game/game.dart';
import 'package:game_mentor/util/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameService {
  static Future<Response<List<dynamic>>> getMany() async =>
      await dio.get('/games');

  static getOne(int id) async => await dio.get('/games/$id');

  //! Admin only
  static saveOne(Game game) async {
    final prefs = await SharedPreferences.getInstance();
    return await dio.post('/games',
        data: game.toJson(),
        options: Options(headers: {'Authorization': 'Bearer ${prefs.getString('token')}'}));
  }
}
