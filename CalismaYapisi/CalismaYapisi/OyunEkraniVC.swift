//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Ömercan Çolak on 13.11.2023.
//

import UIKit

class OyunEkraniVC: UIViewController {

    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k =  kisi {
            print("----- OyunEkraniVC -----")
            print("Kişi ad    : \(k.ad!)")
            print("Kişi yaş   : \(k.yas!)")
            print("Kişi boy   : \(k.boy!)")
            print("Kişi bekar : \(k.bekar!)")
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)

    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true) Bir önceki sayfaya Dönüş
        navigationController?.popToRootViewController(animated: true) //Anasayfaya geri dönüş.
    }
}
