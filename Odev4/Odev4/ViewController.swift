//
//  ViewController.swift
//  Odev4
//
//  Created by Ömercan Çolak on 14.11.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let sayfaAItem = tabItems[0]
            let sayfaXItem = tabItems[1]
            sayfaAItem.badgeValue = "2"
            sayfaXItem.badgeValue = "New"
        }
        
        //TabBar'ın arka planını değiştirmek
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.lightGray
        
        renkDegis(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegis(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegis(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        

    }
    
    func renkDegis (itemAppearance:UITabBarItemAppearance) {
        //seçili ise
        itemAppearance.selected.iconColor = UIColor.systemYellow
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemYellow]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemRed        //Seçili değil ise
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.systemRed
    }


}

