//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Ömercan Çolak on 13.11.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    //Leading - Left - Start
    //Trailing - Right - End
    
    override func viewDidLoad() { // Uygulama ilk açıldığında Çalışır.(1 kere çalışır.)
        super.viewDidLoad()
        // Do any additional setup  after loading the view.
        labelAnasayfa.text = "Hoşgeldin"
        print("viewDidLoad Çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) { // Sayfa Her göründüğünde çalışır.
        print("viewWillAppear Çalıştı")
        //Sayfaya geri dönüldüğünde de çalışır.

    }
    override func viewWillDisappear(_ animated: Bool) {//Sayfa Her görünmez olduğunda çalışır.
        print("viewWillDisAppear Çalıştı")

    }

    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"

    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare methodu çalıştı")
        if segue.identifier == "oyunEkraninaGecis"  {
            print("oyunEkraninaGecis Çalıştı")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add Seçildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save Seçildi")
    }
}

