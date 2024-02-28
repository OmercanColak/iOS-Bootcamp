//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Ömercan Çolak on 8.02.2024.
//

import UIKit

class Anasayfa: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    var kisilerListesi = [Kisiler]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate =  self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Mehmet", kisi_tel: "22222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Mert", kisi_tel: "33333")
        let k4 = Kisiler(kisi_id: 4, kisi_ad: "Bilal", kisi_tel: "4444")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
        kisilerListesi.append(k4)
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
}

extension Anasayfa : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi Ara : \(searchText)")
    }
}
extension Anasayfa : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListesi[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as!
            KisilerHucre
        
        hucre.labelKisiAd.text = kisi.kisi_ad
        hucre.labelKisiTel.text = kisi.kisi_tel
        
        return hucre
    }
    //Detay Sayfasına geçiş için yazdığımız kod bloğu
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {contextualAction,view,bool in
            let kisi = self.kisilerListesi[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) Silinsin mi ?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) {action in
                print("Kişi Sil : \(kisi.kisi_id!)")
            }
            alert.addAction(evetAction)
            self.present(alert, animated:true)
            
            
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}