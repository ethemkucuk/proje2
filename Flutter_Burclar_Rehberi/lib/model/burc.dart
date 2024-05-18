class Burc {
  final String burcAdi;
  final String burcTarihleri;
  final String burcGenelOzellikleri;
  final String burcKucukResimAdresi;
  final String burcBuyukResimAdresi;

  Burc(
    this.burcAdi,
    this.burcTarihleri,
    this.burcGenelOzellikleri,
    this.burcKucukResimAdresi,
    this.burcBuyukResimAdresi,
  );

  @override
  String toString() {
    return "Burc Adı: $burcAdi\nBurcTarihkeri: $burcTarihleri\nBurcKucukResimAdresi: $burcKucukResimAdresi\nBurcBuyukResimAdresi: $burcBuyukResimAdresi\n";
  }
}
