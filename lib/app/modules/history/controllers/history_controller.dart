import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:segit/app/data/history_provider.dart';
import 'package:sp_util/sp_util.dart';

class HistoryController extends GetxController {
  var listData = [].obs;
  
  void getHistory(){
    var id = SpUtil.getInt('id');
    EasyLoading.show();
    HistoryProvider().history(id).then((value) async{
      var responseBody = value.body;
      var data = responseBody['data'];
      if(data == null){
       
      }
      else{
      for (var element in data) {
        var history = {
          'laporan': element['laporan'], 
          'waktu': element['waktu']
        };
        listData.add(history); 
      }
      }
      EasyLoading.dismiss();
    });
  }


  @override
  void onInit() {
    getHistory();
    super.onInit();
  }

  
}
