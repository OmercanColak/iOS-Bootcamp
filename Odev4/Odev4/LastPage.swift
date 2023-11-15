//
//  LastPage.swift
//  Odev4
//
//  Created by Ömercan Çolak on 15.11.2023.
//

import UIKit

class LastPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true) Bir önceki sayfaya Dönüş
        navigationController?.popToRootViewController(animated: true) //Anasayfaya geri dönüş.
    }
}
