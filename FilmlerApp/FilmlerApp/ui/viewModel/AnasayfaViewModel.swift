//
//  AnasayfaViewModel.swift
//  FilmlerApp
//
//  Created by Ömercan Çolak on 1.03.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    var frepo = FilmlerDaoRepository()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value:[Filmler]())

    init(){
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    
    func filmleriYukle(){
        frepo.filmleriYukle()
    }
}
