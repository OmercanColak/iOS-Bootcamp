//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Ömercan Çolak on 29.02.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    
    var kRepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())

    init(){
        kisilerListesi = kRepo.kisilerListesi
        kRepo.kisileriYukle()

    }
    
    func sil(kisi_id:Int) {
        kRepo.sil(kisi_id: kisi_id)
    }
    func ara(aramaKelimesi:String) {
        kRepo.ara(aramaKelimesi: aramaKelimesi)
    }
    func kisileriYukle() {
        kRepo.kisileriYukle()
    }
}
