import UIKit

class Araba { //Class'ımızın Baş harfi büyük olur
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Boş init metodu Çalıştı!")
    }
    init(renk:String,hiz:Int,calisiyorMu:Bool) {
        self.renk = renk // self : Bulunduğu sınıfı temsil ediyor.
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu //Shadowing : gölgeleme deniyor.
        print("Dolu init Çalıştı ")
    }
    
    func calistir() { // Side Effect (Bir fonksiyonla classın içeriğini değiştirebiliyor isek buna "Side Effect" deriz!
        calisiyorMu = true
        hiz = 5
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    
    func bilgiAl(){
        print("------------------")
        print("Renk          : \(renk!)")
        print("Hiz           : \(hiz!)")
        print("Çalışıyor mu? : \(calisiyorMu!)")
    }
}
//Nesne Oluşturma
var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)
//Değer Atama
/*bmw.renk = "Kırmızı"
bmw.hiz = 100
bmw.calisiyorMu = true */


//Değer Okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 50)
bmw.bilgiAl()
bmw.yavasla(kacKm: 20)
bmw.bilgiAl()


var sahin = Araba(renk: "Mavi", hiz: 0, calisiyorMu: false)
/*sahin.renk = "Mavi"
sahin.hiz = 0
sahin.calisiyorMu = false */

sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.durdur()
sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.hizlan(kacKm: 70)
sahin.bilgiAl()
sahin.yavasla(kacKm: 30)
sahin.bilgiAl()



class Fonksiyonlar {
    //geri dönüş değeri olmaysan ( void )
    func selamla1() {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    func selamla2() -> String {
        //Geri Dönüş değeri olan  ( return )
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    //Parametre
    func selamla3(isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        
        return toplam
    }
    
    //Overloading (Metodların class içinde tekrar tekrar kullanılmasıdır.)
    func carpma(sayi1:Int,sayi2:Int){
        print("Sonuc : \(sayi1 * sayi2) ")
    }
    func carpma(sayi1:Double,sayi2:Double){
        print("Sonuc : \(sayi1 * sayi2) ")
    }
    func carpma(sayi1:Int,sayi2:Int,isim:String){
        print("Sonuc : \(sayi1 * sayi2) - İşlemi Yapan \(isim) ")
    }
}

let f = Fonksiyonlar()

f.selamla1()
let gelenSonuc = f.selamla2()
print("Gelen Sonuc : \(gelenSonuc)")

f.selamla3(isim: "Mehmet")


let gelenToplam = f.toplama(sayi1: 34, sayi2: 23)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 2, sayi2: 2)
f.carpma(sayi1: 2.2, sayi2: 2.5)
f.carpma(sayi1: 2, sayi2: 3, isim: "Ömer")

// Static değişkenler ve metodlar
class ASinifi {
    static var x = 10
    
    static func metod(){
        print("Metod Çalıştı")
    }
}

let a = ASinifi()
/*print(a.x)
a.metod()

print(ASinifi().x) //Sanal nesne - Virtual object - isimsiz nesne
ASinifi().metod() */
print(ASinifi.x)
ASinifi.metod()

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}
func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut{
    case .kucuk: print("Fiyat : \(adet * 13) ₺")
    case .orta: print("Fiyat : \(adet * 24) ₺")
    case .buyuk: print("Fiyat : \(adet * 35) ₺")
    }
}
ucretHesapla(boyut: .orta, adet: 100)

//Composition
class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}
class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    init (film_id:Int, film_ad:String, film_yil:Int, kategori:Kategoriler, yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    
    }
}
let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k2, yonetmen: y2)

print("Film id : \(f1.film_id!)")
print("Film ad : \(f1.film_ad!)")
print("Film yil : \(f1.film_yil!)")
print("Film kategori : \(f1.kategori!.kategori_ad!)")
print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")



