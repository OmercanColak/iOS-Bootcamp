//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Ömercan Çolak on 8.02.2024.
//

import UIKit

class KisiKayit: UIViewController {
    
    @IBOutlet weak var tfKisiAd: UITextField!
    
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var viewModel = KisiKayitViewModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text {
            viewModel.kaydet(kisi_ad: ka, kisi_tel: kt)
        }
        
    }
}
