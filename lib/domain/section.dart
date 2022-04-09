class Section {
  Section({
    this.category,
    this.hospitals,
  });
  String? category;
  List<Hospital>? hospitals;
}

class Hospital {
  Hospital({
    this.namaRs,
    this.alamat,
  });

  String? namaRs;
  String? alamat;
}
