import 'package:get/get.dart';
import 'package:segit/app/data/api_services.dart';

class LaporProvider extends GetConnect {
Future<Response> lapor(data, token){
  var myHeader = {
    'Accept': 'application/json',
    'Authorization': 'Bearer $token',
  };
  var url = UrlContainer.baseUrl;
  // return post('http://192.168.1.2:8000/api/login', data, headers: myHeader); //real device
  // return post('http://10.0.2.2:8000/api/login', data, headers: myHeader); //emulator
  return post('$url/api/laporan', data, headers: myHeader); //ngrok
}
}


