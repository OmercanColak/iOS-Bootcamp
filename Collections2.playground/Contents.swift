import UIKit

var greeting = "Hello, playground"
var meyveler = Set<String>()

//veri Ekleme
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elması")
print(meyveler)

for meyve in meyveler {
    print("Sonuc : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks) : \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boş mu : \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)
meyveler.removeAll()
print(meyveler)

//Dictionary - HashMap - Map
var iller = [Int:String]()
//Veri Ekleme
iller[16] = "BURSA"
iller[34] = "İSTANBUL"
print(iller)

//Veri Okuma
print(iller[16]!)

//Veri Güncelleme
iller[16] = "YENİ BURSA"
print(iller)

for (anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}

//Veri Silme
iller.removeValue(forKey: 16)
print(iller)
