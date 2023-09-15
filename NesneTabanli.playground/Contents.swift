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
