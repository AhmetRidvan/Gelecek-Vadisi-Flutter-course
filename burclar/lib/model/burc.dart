class BurcModel {
  String burcAdi;
  String burcTarihi;
  String burcDetayi;
  String burcKucukResim;
  String burcBuyukResim;

  BurcModel(
    this.burcAdi,
    this.burcTarihi,
    this.burcDetayi,
    this.burcKucukResim,
    this.burcBuyukResim,
  );
  @override
  String toString() {
    return '${burcAdi} - ${burcKucukResim} - ${burcBuyukResim}';
  }
}
