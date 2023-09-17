import UIKit

class odev2 {
    func soru1(km:Double) -> Double {
        var mil = km * 0.621
        return mil
    }
    
    func soru2(kısaKenar:Int,uzunKenar:Int){
        var alan = kısaKenar * uzunKenar
        print("Verdiğiniz Diktörtgenin Alanı : \(alan)")
    }
    func soru3(sayi:Int) -> Int{
        if sayi == 0 || sayi == 1 {
            return 1
        }else{
            var sonuc = 1
            for i in 2...sayi {
                sonuc *= i
            }
            return sonuc

        }
    }
    func soru4(kelime:String) -> Int{
        var sayac = 0
        for i in kelime {
            if i == "e" || i == "E" {
                sayac += 1
            }
        }
        return sayac
    }
    
    func soru5(kenarSayisi:Int) -> Int{
        var icAcilarToplami = ((kenarSayisi - 2) * 180) / kenarSayisi
        return icAcilarToplami
    }
    func soru6(gunSayisi: Int) -> Int {
        let calismaSaati = gunSayisi * 8
        let maasOrani: Int = 40 // Çalışma saat ücreti
        let mesaiOrani: Int = 80 // Mesai saat ücreti
        let mesaiAltLimit: Int = 150 // Mesai saat alt sınırı
        
        if calismaSaati <= mesaiAltLimit {
            return (calismaSaati) * maasOrani
        } else {
            let normalMaas = (mesaiAltLimit) * maasOrani
            let mesaiSaatleri = (calismaSaati - mesaiAltLimit)
            let mesaiMaasi = mesaiSaatleri * mesaiOrani
            return normalMaas + mesaiMaasi
        }
    }
    func soru7(sure:Int) -> Int {
        let saat:Int = 1
        let saatArtis:Int = 10
        let birSaat:Int = 50 // Bir saat tutarı
        var toplamTutar:Int = 0
        if sure == 0{
            return toplamTutar
        }else if sure == saat {
            toplamTutar = birSaat
        }else {
            toplamTutar = birSaat + (sure * saatArtis) - saatArtis
        }
        return toplamTutar
    }
    
    
}
var s1 = odev2()
let s1Sonuc = s1.soru1(km: 23)
print("1. Sorunun Cevabı: \(s1Sonuc)")

var s2 = odev2()
s2.soru2(kısaKenar: 10, uzunKenar: 5)

let s3 = odev2()
let s3Sonuc = s3.soru3(sayi: 5)
print("Girilen sayının Faktöriyeli : \(s3Sonuc)")

let s4 = odev2()
let s4Sonuc = s4.soru4(kelime: "Ege")
print("Girilen kelimenin için de toplam \(s4Sonuc) tane e harfi vardır.")

let s5 = odev2()
let s5Sonuc = s5.soru5(kenarSayisi: 4)
print("Girilen kenar sonucuna göre hesaplana iç açılar toplamı : \(s5Sonuc)")

let s6 = odev2()
let s6Sonuc = s6.soru6(gunSayisi: 20)
print("Girilen gün sayısına göre toplam maas tutarı : \(s6Sonuc) ₺'dir.")

let s7 = odev2()
let s7Sonuc = s7.soru7(sure: 2)
print("Girilen otopark süresine göre ücretiniz toplam : \(s7Sonuc) ₺'dir.")
