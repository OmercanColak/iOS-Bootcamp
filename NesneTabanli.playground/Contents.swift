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



