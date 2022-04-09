import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_teleheal/domain/section.dart';

class Repository {
  final section = [
    'Semua',
    'BPJS',
    'Partner',
    'Terdekat',
  ];

  final _hospitalName = [
    'RS. Medika',
    'Jakarta Hospital',
    'Rumah Sakit Agung',
    'RS. Cikini',
    'RS. Pelabuhan',
    'RS. Gatot Subroto',
    'RS. Jantung'
  ];

  final _clinicName = [
    'Klinik Umum Medica',
    'Klinik Ibu dan Anak',
    'Klinik Saman',
    'Klinik Umum',
    'Klinik Anak',
    'Klinik Kulit'
  ];

  final _random = Random();

  Section generateHospital(int size) {
    List<Hospital> list = [];
    for (int i = 0; i < size; i++) {
      int randomNumber = _random.nextInt(_hospitalName.length);
      list.add(
          Hospital(namaRs: _hospitalName[randomNumber], alamat: 'Alamat $i'));
    }
    debugPrint('list: $list');
    return Section(hospitals: list);
  }

  Section generateClinic(int size) {
    List<Hospital> list = [];
    for (int i = 0; i < size; i++) {
      int randomNumber = _random.nextInt(_clinicName.length);
      list.add(
          Hospital(namaRs: _clinicName[randomNumber], alamat: 'Alamat $i'));
    }
    debugPrint('list: $list');
    return Section(hospitals: list);
  }
}
