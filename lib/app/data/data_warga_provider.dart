
import 'package:get/get.dart';
import 'package:segit/app/data/api_services.dart';
import 'package:sp_util/sp_util.dart';

class WargaProvider extends GetConnect {
Future<Response> getWarga(){
  var myHeader = {
    'Accept': 'application/json',
    'Authorization': 'Bearer ${SpUtil.getString('token')!}'
  };
  var url = UrlContainer.baseUrl;
  // return get('http://192.168.1.2:8000/api/hari', headers: myHeader); //real device
  // return get('http://10.0.2.2:8000/api/hari/', headers: myHeader); //emulator
  return get('$url/api/data-warga', headers: myHeader); //ngrok
}


}
