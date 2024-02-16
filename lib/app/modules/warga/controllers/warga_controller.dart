import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:segit/app/data/data_warga_provider.dart';
import 'package:segit/app/data/lapor_provider.dart';
import 'package:sp_util/sp_util.dart';

class WargaController extends GetxController {
  var listData = <Map<String, dynamic>>[].obs;

  RxString searchKeyword = ''.obs;
  // var listData = [].obs;

  void setSearchKeyword(String keyword) {
    searchKeyword.value = keyword;
    update(); // Panggil fungsi update untuk memberi tahu GetX bahwa ada perubahan pada state
    if(searchKeyword.isEmpty){
      getDataWarga();
    } else {
       debounce(searchKeyword,
      (String keyword) {
        getDataWarga();
        
        }, time: Duration(milliseconds: 500));
    }
  }

  List<Map<String, dynamic>> getFilteredData() {
    if (searchKeyword.isEmpty) {
      return listData;
    } else {
      return listData
          .where((item) =>
              item['nama']
                  .toLowerCase()
                  .contains(searchKeyword.toLowerCase()) ||
              item['noRumah'].contains(searchKeyword))
          .toList();
    }
  }

  void getDataWarga() {
    WargaProvider().getWarga().then((value) {
      var responseBody = value.body;
      var data = responseBody['data'];
      listData.clear();
      for (var element in data) {
        var warga = {'nama': element['nama'], 'noRumah': element['no_rumah']};
        listData.add(warga);
      }
      update();
    });
  }

  void laporan(nama, no) async {
    var pelapor = SpUtil.getInt('id');
    var token = SpUtil.getString('token');
    var data = {
      "laporan": 'Ada Maling dirumah $nama, No $no',
      "pelapor_id": pelapor,
    };
    LaporProvider().lapor(data, token);
  }

  @override
  void onInit() {
    getDataWarga();
    super.onInit();
  }

  void refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    EasyLoading.show();
    getDataWarga();
    EasyLoading.dismiss();
  }

  void onClose() {
   searchKeyword.value = '';
  super.onClose();
}
}
