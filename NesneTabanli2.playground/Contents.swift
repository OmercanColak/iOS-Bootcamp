import UIKit

class Ev {
    var pencereSayisi:Int?
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}
class Saray:Ev {
    var kuleSayisi:Int?
    init(kuleSayisi:Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}
class Villa:Ev {
    var garajVarMi:Bool?
    init(garajVarMi:Bool,pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)
print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

//Override
class Hayvan {
    func sesCikar(){
        print("Sesim yok")
    }
}
class Memeli:Hayvan {
    
}
class Kedi:Memeli {
    override func sesCikar() {
        print("Miyav Miyav")
    }
}
class Kopek:Memeli {
    override func sesCikar() {
        print("Hav Hav")
    }
}
let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() //Kalıtım yok, Kendi Fonksiyonunu çalıştırdı.
memeli.sesCikar() //Kalıtım var, üst sınıfın fonksiyonunu çalıştırdı.
kedi.sesCikar() //Kalıtım var, kendi metodunu çalıştırdı.
kopek.sesCikar() //Kalıtım var, Kendi metodunu çalıştırdı.


//Tip Dönüşümü
//Upcasting (Alt class Üst Class'a Dönüşür)
var ev = Saray(kuleSayisi: 3, pencereSayisi: 5) as Ev

//Downcasting
var saray = Ev(pencereSayisi: 5) as? Saray

// Tip Kontrolü
if ev is Ev {
    print("Nesne ev sınıfındandır")
}else{
    print("nesne ev sınıfından değildir.")
}

// Protocol
protocol MyProtocol {
    var degisken:Int {get set}
    
    func metod1()
    func metod2() -> String
}
class ClassA: MyProtocol {
        var degisken: Int = 10
    func metod1() {
        print("metod 1 çalıştı")
    }
    func metod2() -> String {
        return "metod 2 çalıştı"
    }
}

//Extension
extension Int{
    func carp(sayi:Int) -> Int{
        return self * sayi
    }
}
let x = 3.carp(sayi: 5)
print(x)

//Closure
let ifade = {
    print("Merhaba")
    
}
ifade()
