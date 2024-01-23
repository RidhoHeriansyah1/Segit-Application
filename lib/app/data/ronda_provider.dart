import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class RondaProvider extends GetConnect {
Future<Response> getRonda(){
  var myHeader = {
    'Accept': 'application/json',
    'Authorization': 'Bearer ${SpUtil.getString('token')!}'
  };
  return get('http://192.168.1.2:8000/api/hari', headers: myHeader); //real device
  // return get('http://10.0.2.2:8000/api/hari/', headers: myHeader); //emulator
}


}
