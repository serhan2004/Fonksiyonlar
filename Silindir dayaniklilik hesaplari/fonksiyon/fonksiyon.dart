class Silindir{
  int? yaricap;
  int pi = 3;
  int? yukseklik;
  
  Silindir(this.yaricap, this.yukseklik, this.pi);
  
  double dayaniklilikHesapla(){
    int yuzeyalani = this.pi*((this.yaricap!) * (this.yaricap!));
    int hacim = yuzeyalani*this.yukseklik!;
    double dayaniklilik = yuzeyalani / hacim;
    
    return dayaniklilik;
  }
  double yenidayanikilikHesapla(int katsayi){
    int yuzeyalani = this.pi*(this.yaricap!*katsayi)*(this.yaricap!*katsayi);
    int hacim = yuzeyalani*(this.yukseklik!*3);
    double yenidayaniklilik = yuzeyalani / hacim;
    return yenidayaniklilik;
  }
  // şimdi yazacağım fonksiyon silindirin çapının ve yüksekliğinin x katını adığımızda
  // eski dayanıklılığın yeni dayanıklılığına oranını veriyor
  
  double oranHesapla(int katsayi){
   double eskiDayaniklilik = this.dayaniklilikHesapla();
   double carpilmis_hali = this.yenidayanikilikHesapla(katsayi);
   double oran  = eskiDayaniklilik / carpilmis_hali;
    
    
    return oran;
  }
  
  
  
  
  
}


void main(){
  Silindir silindirim = Silindir(2,10,3);
    print(" Pi Değeri : ${silindirim.pi}  Yarıçapı : ${silindirim.yaricap}  Yüksekliği : ${silindirim.yukseklik}");
  print("Silindirin Dayanıklılığı ${silindirim.dayaniklilikHesapla().toString()}");
 print("Silindirin Eski Dayanıkılığı bölü  x katının yeni dayanıklılığı ${ silindirim.oranHesapla(3).toString()}");
  
}