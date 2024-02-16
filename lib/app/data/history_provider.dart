import 'package:get/get.dart';
import 'package:segit/app/data/api_services.dart';
import 'package:sp_util/sp_util.dart';

class HistoryProvider extends GetConnect {
Future<Response> history(id){
  var myHeader = {
    'Accept': 'application/json',
    'Authorization': 'Bearer ${SpUtil.getString('token')!}',
  };
  var url = UrlContainer.baseUrl;
  // return post('http://192.168.1.2:8000/api/login', data, headers: myHeader); //real device
  // return post('http://10.0.2.2:8000/api/login', data, headers: myHeader); //emulator
  return get('$url/api/laporan/$id', headers: myHeader); //ngrok
}
}


