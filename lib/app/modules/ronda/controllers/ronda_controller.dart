
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:segit/app/data/model/ronda_model.dart';
import 'package:segit/app/data/ronda_provider.dart';

class RondaController extends GetxController {
  var listData = [].obs;
  var listDetail = [].obs;
  RxList<Hari> schedules = <Hari>[].obs;

  void getDataRonda(){
  EasyLoading.show(status: "Load Data");
    RondaProvider().getRonda().then((value) async{
      var responseBody = value.body;
      var data = responseBody['data'];
      for (var element in data) {
        Hari ronda = Hari.fromJson(element);
        schedules.add(ronda); 
      }
      EasyLoading.dismiss();
    });
  }

  @override
  void onInit() {
    getDataRonda();
    super.onInit();
  }
}
