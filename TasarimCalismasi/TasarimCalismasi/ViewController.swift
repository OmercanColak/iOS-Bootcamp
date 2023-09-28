//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Omercan.Colak on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk1")!,.font: UIFont(name: "Pacifico", size: 22)!]
        navigationController?.navigationBar.barStyle = .black //Yukarıyı Beyaz Yapmak için Yapıyoruz.
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

    }


}

