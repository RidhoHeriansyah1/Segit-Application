import 'dart:convert';

import 'package:get/get.dart';

class FcmMessageProvider extends GetConnect {
  Future<Response> token(var data){
  var myHeader = {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'key=AAAAHOmpC-o:APA91bHhSLpSsIOlpJZiw6hHJzu2TSMQJIDfxtDiDGzxeYf59gi912S_42M4mZAiH67a5S9b5lI-ZO4fqMN6Gb5dxlrYk4h8t0JIpuZIDbJh3aQtZlAVBlU2KAo0c4zp8-S5gvaryf8J'
  };
  return post('https://fcm.googleapis.com/fcm/send', jsonEncode(data), headers: myHeader); //real device
}
}
