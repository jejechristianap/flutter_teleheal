import 'package:flutter_teleheal/data/repository.dart';
import 'package:flutter_teleheal/domain/section.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var index = 0.obs;
  var indexClinic = 0.obs;
  var semua = Section().obs;
  var bpjs = Section().obs;
  var partner = Section().obs;
  var terdekat = Section().obs;
  var semuaKlinik = Section().obs;
  var bpjsKlinik = Section().obs;
  var partnerKlinik = Section().obs;
  var terdekatKlinik = Section().obs;

  @override
  void onInit() {
    super.onInit();
    generateHospital();
  }

  updateIndex(int i) {
    index.value = i;
  }

  updateIndexClinic(int i) {
    indexClinic.value = i;
  }

  generateHospital() {
    semua.value = Repository().generateHospital(10);
    bpjs.value = Repository().generateHospital(3);
    partner.value = Repository().generateHospital(5);
    terdekat.value = Repository().generateHospital(2);
    semuaKlinik.value = Repository().generateClinic(6);
    bpjsKlinik.value = Repository().generateClinic(2);
    partnerKlinik.value = Repository().generateClinic(1);
    terdekatKlinik.value = Repository().generateClinic(3);
  }

  Section getSectionHospital() {
    switch (index.value) {
      case 0:
        return semua.value;
      case 1:
        return bpjs.value;
      case 2:
        return partner.value;
      case 3:
        return terdekat.value;
    }
    return Section();
  }

  Section getSectionClinic() {
    switch (indexClinic.value) {
      case 0:
        return semuaKlinik.value;
      case 1:
        return bpjsKlinik.value;
      case 2:
        return partnerKlinik.value;
      case 3:
        return terdekatKlinik.value;
    }
    return Section();
  }
}
