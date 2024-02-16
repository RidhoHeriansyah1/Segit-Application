
import 'package:get/get.dart';
import 'package:segit/app/data/model/ronda_model.dart';
import 'package:segit/app/data/ronda_provider.dart';

class RondaController extends GetxController {
  RxList<Hari> schedules = <Hari>[].obs;

  void getDataRonda() async{
    RondaProvider().getRonda().then((value) async{
      var responseBody = value.body;
      var data = responseBody['data'];
      for (var element in data) {
        Hari ronda = Hari.fromJson(element);
        schedules.add(ronda); 
      }
      
    });
  }

  @override
  void onInit() {
    getDataRonda();
    super.onInit();
  }
}
