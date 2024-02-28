//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Ömercan Çolak on 26.02.2024.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath:IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    

    @IBOutlet weak var imageViewFilm: UIImageView!
    
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
    
}
