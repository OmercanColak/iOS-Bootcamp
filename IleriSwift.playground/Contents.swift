import UIKit

//Guard
func kisiTanimlama(ad:String){
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else{
        print("Tanınmaya Kişi")
    }
}
kisiTanimlama(ad: "Ahmet")

func kisiTanimlama2(ad:String){
    guard ad == "Ahmet" else { //Sadece false da çalışır
        print("Tanınmayan kişi")
        return     //Fonksiyonun çalışmasını durdurur.
    }
    print("Merhaba Ahmet")
}
kisiTanimlama2(ad: "Ahmet")

//Hata Ayıklama
//2 hatamız var
//1. si compile error : Editör Hataları
//let x = 10
//x = 40


//Runtime Error : Exception : Çalışma sırasında oluşan hatlar
//let sonuc = 10 / 0 //Editörde görünmeyip çalışırken alınan hatalar

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int,sayi2:Int) throws -> Int{ //Throws : burada hata olabilir demek, hata olabileceğini belirtmek için kullanıyoruz.
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}
do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)

}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayı Sıfıra Bölünemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 5)//Eğer hata olursa sonuc nil olur

if let temp = sonuc1 {
    print(temp)
}else {
    print("Sayı Sıfıra Bölünemez")
}
