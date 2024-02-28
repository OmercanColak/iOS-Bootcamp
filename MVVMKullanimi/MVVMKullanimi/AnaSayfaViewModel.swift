//
//  AnaSayfaViewModel.swift
//  MVVMKullanimi
//
//  Created by Ömercan Çolak on 28.02.2024.
//

import Foundation
import RxSwift

class AnaSayfaViewModel {
    //var sonuc = "0" // yöneteceğimiz değer
    //var sonuc = BehaviorSubject<String>(value: "0")
    var sonuc = BehaviorSubject<String>(value: "0")
    var mRepo = MatematikRepository()
    
    init(){
        sonuc = mRepo.sonuc
    }
    
    func toplamaYap(alinanSayi1:String, alinanSayi2:String){
       /* if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let toplam = sayi1 + sayi2
            sonuc.onNext(String(toplam))//Tetikleeme
        }*/
        mRepo.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
    }
    func carpmaYap(alinanSayi1:String, alinanSayi2:String){
        /*if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let carpma = sayi1 * sayi2
            sonuc.onNext(String(carpma))//Tetikleme
        }*/
        mRepo.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
    }
}
