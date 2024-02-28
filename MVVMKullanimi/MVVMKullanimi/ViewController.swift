//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Ömercan Çolak on 28.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldSayi1: UITextField!
    @IBOutlet weak var textFieldSayi2: UITextField!
    
    var viewModel = AnaSayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelSonuc.text = viewModel.sonuc
        
        _ = viewModel.sonuc.subscribe(onNext: { s in //Dinleme
            self.labelSonuc.text = s
        })
        

    }
    
    @IBAction func buttonToplama(_ sender: Any) {
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
           // labelSonuc.text = viewModel.sonuc
        }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let alinanSayi1 = textFieldSayi1.text, let alinanSayi2 = textFieldSayi2.text {
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            //labelSonuc.text = viewModel.sonuc
        }
    }
}

