import 'package:get/get.dart';
import 'package:segit/app/data/api_services.dart';

class LoginProvider extends GetConnect {
Future<Response> auth(var data){
  var myHeader = {
    'Accept': 'application/json',
  };
  var url = UrlContainer.baseUrl;
  // return post('http://192.168.1.2:8000/api/login', data, headers: myHeader); //real device
  // return post('http://10.0.2.2:8000/api/login', data, headers: myHeader); //emulator
  return post('$url/api/login', data, headers: myHeader); //ngrok
}
}


